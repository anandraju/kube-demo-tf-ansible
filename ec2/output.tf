output "instance_ip_addresses" {
  value = {
    for instance in aws_instance.web[*]:
      instance.id => instance.private_ip
  }
}
