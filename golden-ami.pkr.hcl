variable "ami_id" {
  type    = string
  default = "enter ami id here"
}
variable "image_name" {
  type    = string
  default = "nginx"
}
source "amazon-ebs" "nginx" {
  ami_name                = "PACKER-DEMO-${var.image_name}"
  instance_type           = "t2.micro"
  region                  = "enter your region"
  source_ami              = "${var.ami_id}"
  ssh_username            = "ubuntu"
  temporary_key_pair_type = "ed25519"
  tags = {
    Env  = "DEMO"
    Name = "PACKER-DEMO-${var.image_name}"
  }
}

build {
  sources = ["source.amazon-ebs.nginx"]

  provisioner "shell" {
    script = "scripts/required_packages.sh"
  }
}
