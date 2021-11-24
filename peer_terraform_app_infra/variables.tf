variable "region" {
  default = "us-east-1"
}
variable "instance_count_webserver" {
  default = "1"
}
variable "instance_count_loadbalancer" {
  default = "1"
}
variable "instance_count_mysqlserver" {
  default = "1"
}
variable "web_instance_ami" {
  default = "ami-0b0af3577fe5e3532" # x86_64 CentOS_7
}
variable "lb_instance_ami" {
  default = "ami-0b0af3577fe5e3532" # x86_64 CentOS_7
}
variable "webserver_prefix" {
  default = "healthpartner-webserver-vm-centos-2"
}
variable "loadbalancer_prefix" {
  default = "healthpartner-loadbalancer-vm"
}
variable "mysqlserver_prefix" {
  default = "healthpartner-mysqlserver-vm"
}
variable "host_zone_id" {
  default = "Z085947422RTR2LQUT9Q"
}
variable "route53_a_record_name" {
  default = "webserver.varun.chefsuccess.io"
}
