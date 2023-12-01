# Variables
variable "shared_credentials" {
	default = "credentials"
}

variable "region" {
  default = "ap-south-1"
}
variable "public_key_path" {
  description = "Public key path"
  default = "~/.ssh/new1.pub"
}
variable "instance_ami" {
  description = "AMI for aws EC2 instance"
  default = "ami-09a7bbd08886aafdf"
}
variable "instance_type" {
  description = "type for aws EC2 instance"
  default = "t2.micro"
}
variable "environment_tag" {
  description = "Environment tag"
  default = "Production"
}