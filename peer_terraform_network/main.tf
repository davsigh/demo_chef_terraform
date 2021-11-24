resource "aws_vpc" "default" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = "true"
  tags = {
    Name = var.vpc_name 
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.default.id
  cidr_block              =  var.public_subnet_cidr_clock
  map_public_ip_on_launch = true
  availability_zone       = "${var.region}${var.aws_availability_zone}"
  tags = {
    Name = var.public_subnet_name
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.default.id
  cidr_block        =  var.private_subnet_cidr_clock
  availability_zone = "${var.region}${var.aws_availability_zone}"
  tags = {
    Name = var.private_subnet_name
  }
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id
  tags = {
    Name = var.igw_name
  }
}

resource "aws_route_table" "my-route-table" {
  vpc_id = aws_vpc.default.id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default.id
  }
  tags = {
    Name = var.route_table_name
  }
}

resource "aws_route_table_association" "my-public-route-association" {
  subnet_id = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.my-route-table.id
}

