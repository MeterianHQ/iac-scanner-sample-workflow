provider "aws" {
  region = "${var.region}"
  shared_credentials_file = "${var.shared_credentials}"
  profile = "default"
}

module "networkModule" {
  source = "./module/network"
}

resource "aws_instance" "ec2_instance" {
  instance_type = "${var.instance_type}"
  ami = "${var.instance_ami}"
  subnet_id = "${module.networkModule.public_subnet_id}"
  vpc_security_group_ids = "${module.networkModule.sg_22_id}"

  tags = {
    Environment = "${var.environment_tag}"
  }
}