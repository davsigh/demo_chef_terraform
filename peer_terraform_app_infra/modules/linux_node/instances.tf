resource "aws_instance" "my_vm" {
  count = var.instance_count
  ami = var.ami
  subnet_id = var.subnet_id
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = var.vpc_security_group_ids
  tags = var.tags

  provisioner "local-exec" {
    command = "sleep 90; knife bootstrap ${self.public_ip} -U ${var.ssh_user_name} -i ~/Downloads/Davinder_keys.pem --sudo -N ${self.public_ip} --policy-name ${var.chef_policy_name} --policy-group dev-env -c ~/.chef/config.rb --ssh-verify-host-key=never --chef-license accept"
  }

  provisioner "remote-exec" {
    connection {
      host = self.public_ip
      type = "ssh"
      user = var.ssh_user_name
      agent = false
      private_key = file("~/Downloads/Davinder_keys.pem")
    }
    inline = [
      "sudo chef-client -l info"
    ]
 }

 provisioner "local-exec" {
  when = "destroy"
  command = "knife node delete -y ${self.public_ip} -c ~/.chef/config.rb"
  on_failure = continue
 }

 provisioner "local-exec" {
  when = "destroy"
  command = "knife client delete -y ${self.public_ip} -c ~/.chef/config.rb"
  on_failure = continue
 }
}
