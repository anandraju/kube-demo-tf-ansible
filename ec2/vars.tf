variable "ec2_count" {
  default = 1
}

variable "ami_id" {
  default = "ami-07c8bc5c1ce9598c3"
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

