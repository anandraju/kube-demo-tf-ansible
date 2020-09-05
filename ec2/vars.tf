variable "ec2_count" {
  default = 1
}

variable "ami_id" {
  ###LINUX AMI 
  #default = "ami-07c8bc5c1ce9598c3"
  ##UBUNTU
  default = "ami-0010d386b82bc06f0"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ec-user"
}

variable "ports" {
  type    = list(number)
  default = [22, 80, 8080, 6443, 10250]
}
