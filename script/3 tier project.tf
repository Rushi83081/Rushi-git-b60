# VPC
resource "aws_vpc" "network" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "3-tier"
  }
}

# create public subnet for nginx
resource "aws_subnet" "s1" {
  vpc_id = aws_vpc.network.id
  cidr_block = "10.0.0.0/22"
  availability_zone = "eu-north-1a"
  map_public_ip_on_launch = true 
  tags = {
    Name = "public-subnet-Nginx"
  }         
}

#create private subnet for tomcat
resource "aws_subnet" "s2" {
    vpc_id = aws_vpc.network.id
    cidr_block = "10.0.4.0/22"
    availability_zone = "eu-north-1b"
    map_public_ip_on_launch = false
    tags = {
        Name = "private-subnet-Tomcat"
    }
}

#create private subnet for database
resource "aws_subnet" "s3" {
    vpc_id = aws_vpc.network.id
    cidr_block = "10.0.8.0/22"
    availability_zone = "eu-north-1c"
    map_public_ip_on_launch = false
    tags = {
        Name = "private-subnet-Database"
    }
}
# create internet gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.network.id 
  tags = {
    Name = "igw-vnet"
  }
}

#create nat gateway
resource "aws_nat_gateway" "nat" {
    allocation_id = aws_eip.eip.allocation_id
    subnet_id = aws_subnet.s1.id

  tags = {
    Name = "NAT-gateway"
  }
  depends_on = [aws_internet_gateway.igw]
}

# Elastic ip
resource "aws_eip" "eip" {
  domain = "vpc"
  tags = {
    Name = "nat-elastic"
  } 
}

# create public route table
resource "aws_route_table" "rt1" {
  vpc_id = aws_vpc.network.id 
  tags = {
    Name = "RT-Public"
  }
 # attach igw to rt
  route {
    gateway_id = aws_internet_gateway.igw.id 
    cidr_block = "0.0.0.0/0"
  }
}

# attach subnet to route table
resource "aws_route_table_association" "rta1" {
  route_table_id = aws_route_table.rt1.id
  subnet_id = aws_subnet.s1.id 
}

# private Route Table
resource "aws_route_table" "rt2" {
  vpc_id = aws_vpc.network.id 
  tags = {
    Name = "RT-Private"
  }
 # attach igw to rt
  route {
    nat_gateway_id = aws_nat_gateway.nat.id 
    cidr_block = "0.0.0.0/0"
  }
}
# Tomcat subnet association
resource "aws_route_table_association" "rta2" {
  route_table_id = aws_route_table.rt2.id
  subnet_id = aws_subnet.s2.id 
}
# Database subnet association
resource "aws_route_table_association" "rta3" {
  route_table_id = aws_route_table.rt2.id
  subnet_id = aws_subnet.s3.id 
}

# create security group for Nginx
resource "aws_security_group" "sg1" {
  vpc_id = aws_vpc.network.id 
  name = "SG-Nginx"

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

# create security group for Tomcat
resource "aws_security_group" "sg2" {
  vpc_id = aws_vpc.network.id 
  name = "SG-Tomcat"

  ingress {
    from_port = 22 
    to_port = 22 
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 8080 
    to_port = 8080 
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

# create security group for Database
resource "aws_security_group" "sg3" {
  vpc_id = aws_vpc.network.id 
  name = "SG-Database"

  ingress {
    from_port = 22 
    to_port = 22 
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 3306 
    to_port = 3306
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

resource "aws_db_subnet_group" "db_subnet_group" {
  name = "db-subnet-group"
  subnet_ids = [aws_subnet.s2.id, aws_subnet.s3.id]
  tags = {
    Name = "DB-Subnet-Group"
  }
}

# Create RDS
resource "aws_db_instance" "studentdb" {
  allocated_storage = 8
  db_name = "database1"
  engine = "mariadb"
  engine_version = "11.4.8"
  instance_class = "db.t3.micro"
  username = "admin"
  password = "Rushi123"
  skip_final_snapshot = true

  vpc_security_group_ids = [aws_security_group.sg3.id]
  # Attach the DB subnet group
  db_subnet_group_name   = aws_db_subnet_group.db_subnet_group.name
}

# launch Nginx instance 
resource "aws_instance" "nginx" {
  ami = "ami-07fb0a5bf9ae299a4"
  instance_type = "t3.micro"
  key_name = "new-key"
  subnet_id = aws_subnet.s1.id 
  vpc_security_group_ids = [aws_security_group.sg1.id]

  tags = {
    Name = "nginx-server"
  }
}

# create tomcat server
resource "aws_instance" "tomcat" {
  ami = "ami-07fb0a5bf9ae299a4"
  instance_type = "t3.micro"
  key_name = "new-key"
  subnet_id = aws_subnet.s2.id 
  vpc_security_group_ids = [aws_security_group.sg2.id]

  tags = {
    Name = "tomcat-server"
  }
}

# create database server
resource "aws_instance" "database" {
  ami = "ami-07fb0a5bf9ae299a4"
  instance_type = "t3.micro"
  key_name = "new-key"
  subnet_id = aws_subnet.s3.id 
  vpc_security_group_ids = [aws_security_group.sg3.id]

  tags = {
    Name = "database-server"
  }
}
