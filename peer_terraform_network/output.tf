output "my_vpc" {
  value = aws_vpc.default.id
}
output "private_subnet" {
  value = aws_subnet.private_subnet.id
}
output "public_subnet" {
  value = aws_subnet.public_subnet.id
}
output "my_igw" {
  value = aws_internet_gateway.default.id
}
output "my_route_table" {
  value = aws_route_table.my-route-table.id
}

output "my_route_table_association" {
  value = aws_route_table_association.my-public-route-association.id
}
output "ssh_key_pair" {
  value = aws_key_pair.vm_ssh_key.key_name
}
output "default_security_group_id_array" {
  value = aws_security_group.default.*.id
}

output "chefserver_security_group_id_array" {
  value = aws_security_group.chefserver.*.id
}
output "webserver_security_group_id_array" {
  value = aws_security_group.webserver.*.id
}
output "mysqlserver_security_group_id_array" {
  value = aws_security_group.mysqlserver.*.id
}