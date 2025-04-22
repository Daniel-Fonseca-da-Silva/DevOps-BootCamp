resource "aws_instance" "amb-prod" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  key_name      = "Terraform"

  tags = {
    Name = "amb-prod"
  }
}
