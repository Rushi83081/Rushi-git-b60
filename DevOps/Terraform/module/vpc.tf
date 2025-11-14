resource "aws_vpc" "vnet" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "Vnet"
  }
}
resource "aws_subnet" "sub" {
  vpc_id = aws_vpc.vnet.id
  cidr_block = var.subnet_cidr
  availability_zone = var.az
  map_public_ip_on_launch = var.pub_sub

  tags = {
    Name = "Public-sub"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vnet.id
  tags = {
    Name = "IGW"
  }
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.vnet.id
  tags = {
    Name = "RT"
  }
  route {
    gateway_id = aws_internet_gateway.igw.id
    cidr_block = "0.0.0.0/0"
  }
}

resource "aws_route_table_association" "rta" {
  subnet_id = aws_subnet.sub.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_security_group" "SG" {
  vpc_id = aws_vpc.vnet.id
  name = "firewall"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 80
    to_port = 80
    protocol ="tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
