resource "aws_instance" "web" {
  ami                         = var.ami
  instance_type               = var.instance
  key_name                    = var.key_name
  subnet_id                   = var.subnet_a_id
  associate_public_ip_address = true
  vpc_security_group_ids      = [var.vpc_security_group_ids]

    tags = {
        Name = "EC2_TF"
    }

}