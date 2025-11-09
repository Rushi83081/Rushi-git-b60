# 🚀 Terraform Configuration to Deploy Complete AWS VPC Network with Public/Private Subnets, NAT Gateway, and EC2 Web Server


# Create VPC
resource "aws_vpc" "network" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Vnet"
  }
}

# Create public subnet
resource "aws_subnet" "s1" {
  vpc_id = aws_vpc.network.id
  cidr_block = "10.0.0.0/22"
  availability_zone = "eu-north-1a"
  map_public_ip_on_launch = true 
  tags = {
    Name = "public-subnet"
  }
}

# Create private subnet
resource "aws_subnet" "s2" {
  vpc_id = aws_vpc.network.id
  cidr_block = "10.0.4.0/22"
  availability_zone = "eu-north-1b"
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet"
  }
}

# Create internet gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.network.id 
  tags = {
    Name = "igw-vnet"
  }
}

# Create elastic IP for NAT gateway
resource "aws_eip" "eip" {
  domain = "vpc"
  tags = {
    Name = "nat-elastic"
  } 
}

# Create NAT gateway
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.eip.allocation_id
  subnet_id     = aws_subnet.s1.id

  tags = {
    Name = "NAT-gateway"
  }
  depends_on = [aws_internet_gateway.igw]
}

# Create public route table
resource "aws_route_table" "rt1" {
  vpc_id = aws_vpc.network.id 
  tags = {
    Name = "RT-Public"
  }

  route {
    gateway_id = aws_internet_gateway.igw.id 
    cidr_block = "0.0.0.0/0"
  }
}

# Associate public subnet with public route table
resource "aws_route_table_association" "rta" {
  route_table_id = aws_route_table.rt1.id
  subnet_id      = aws_subnet.s1.id 
}

# Create private route table
resource "aws_route_table" "rt2" {
  vpc_id = aws_vpc.network.id 
  tags = {
    Name = "RT-Private"
  }

  route {
    nat_gateway_id = aws_nat_gateway.nat.id 
    cidr_block     = "0.0.0.0/0"
  }
}

# Associate private subnet with private route table
resource "aws_route_table_association" "rtb" {
  route_table_id = aws_route_table.rt2.id
  subnet_id      = aws_subnet.s2.id 
}

# Create security group
resource "aws_security_group" "sg" {
  vpc_id = aws_vpc.network.id 
  name   = "firewall-vnet"

  ingress {
    from_port   = 22 
    to_port     = 22 
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80 
    to_port     = 80 
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    from_port   = 0
    to_port     = 0 
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Launch EC2 instance
resource "aws_instance" "ec2" {
  ami                    = "ami-07fb0a5bf9ae299a4" # Verify this AMI is valid in eu-north-1
  instance_type          = "t3.micro"
  key_name               = "new-key"
  subnet_id              = aws_subnet.s1.id 
  vpc_security_group_ids = [aws_security_group.sg.id]

  user_data = <<-EOF
    #!/bin/bash
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "Hello Terraform" > /var/www/html/index.html
  EOF

  tags = {
    Name = "webserver"
  }
}
