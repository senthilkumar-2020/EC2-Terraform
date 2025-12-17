

resource "aws_instance" "senweb" {
  ami             = "ami-00ca570c1b6d79f36"
  instance_type   = "t2.micro"
  key_name        = "SEN-WEB"
  vpc_security_group_ids = ["sg-082060abd06cb0644"]

  tags = {
    Name = "webserver"
    Env  = "Production"
  }

}

