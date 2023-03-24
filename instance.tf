resource "aws_instance" "web" {
  ami                    = var.image_id     #"ami-09d56f8956ab235b3"
  instance_type          = var.inst_type[1] // or var.inst_type[0], var.inst_type[2]
  count                  = var.inst_count
  availability_zone      = "us-east-1a"
  key_name               = "kk1"
  vpc_security_group_ids = [sg-081189605a4466d10]

  tags = var.ec2_instance_tags
}
