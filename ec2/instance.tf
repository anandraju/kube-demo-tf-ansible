provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "web" {
  count                  = var.ec2_count
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  user_data              = file("scripts/ansible.sh")
  key_name               = aws_key_pair.mykeypair.key_name
  vpc_security_group_ids = [aws_security_group.web_sg.id]
#  provisioner "local-exec" {
#    command = "echo ${aws_instance.web.*.private_ip} >> private_ips.txt"
#  }

  tags = {
    count = var.ec2_count
    Name  = "Ansible-node-${count.index + 1}"
  }
}
