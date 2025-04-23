resource "aws_instance" "amb-prod" {
  count                  = 3
  ami                    = "ami-084568db4383264d4"
  instance_type          = "t2.micro"
  key_name               = "Terraform"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id, aws_security_group.allow_http.id, aws_security_group.allow_egress.id]
  user_data              = file("script.sh")

  tags = {
    Name = "amb-prod-${count.index}"
  }
}

