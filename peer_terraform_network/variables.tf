variable "aws_availability_zone" {
  default = "a"
}
variable "region" {
  default = "us-east-1"
}
variable "private_subnet_cidr_clock" {
  default = "10.0.100.0/24"
}
variable "public_subnet_cidr_clock" {
  default = "10.0.1.0/24"
}
variable "vpc_name" {
  default = "davinder-VPC"
}
variable "public_subnet_name" {
  default = "Davinder_Public-subnet"
}
variable "private_subnet_name" {
  default = "Davinder-private-subnet"
}
variable "igw_name" {
  default = "Davinder_VPC_IGW"
}
variable "route_table_name" {
  default = "Davinder_VPC_RT"
}
variable "security_group_name" {
  default = "Davinder_SG"
}
variable "key_name" {
  default = "Davinder_demo"
}
