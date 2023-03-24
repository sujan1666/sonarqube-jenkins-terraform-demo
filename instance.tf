resource "aws_instance" "web" {
  ami                    = var.image_id     #"ami-09d56f8956ab235b3"
  instance_type          = var.inst_type[1] // or var.inst_type[0], var.inst_type[2]
  count                  = var.inst_count
  availability_zone      = "ap-south-1a"
  key_name               = "kk"
  vpc_security_group_ids = [sg-0e7597c4247e7e9d4]

  tags = var.ec2_instance_tags
}
