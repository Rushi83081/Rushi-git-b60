#Create VPC
resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "VPC"
    }
}

# Create Subnet
resource "aws_subnet" "sub1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.0.0/22"
    availability_zone = "eu-north-1a"
    map_public_ip_on_launch = true
    tags = {
        Name = "Public-sub"
    }
}

# Create Internet Gateway
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vpc.id
    tags = {
        Name = "igw-vpc"
    }
}

# Create Route Table
resource "aws_route_table" "RT" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "RT-1"
  }
  route {
    gateway_id = aws_internet_gateway.igw.id
    cidr_block = "0.0.0.0/0"
  }
}

# Create Subnet Association
resource "aws_route_table_association" "RTA" {
    route_table_id = aws_route_table.RT.id
    subnet_id = aws_subnet.sub1.id
}

# Create Security Group
resource "aws_security_group" "sg" {
  vpc_id = aws_vpc.vpc.id
  name = "Security"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 80
    to_port = 80
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create EC2 Instance
resource "aws_instance" "web" {
    ami = "ami-0c7d68785ec07306c"
    instance_type = "t3.micro"
    key_name = "new-key"
    subnet_id = aws_subnet.sub1.id
    vpc_security_group_ids = [aws_security_group.sg.id]
    
    tags = {
        Name = "WEB"
    }
}
