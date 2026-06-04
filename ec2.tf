resource "aws_instance" "main" {
  ami           = "ami-0236922087fa98b6e"
  instance_type = "t3.micro"
  key_name = "myfkey"
  disable_api_stop = false
  disable_api_termination = true


  tags = {
    Name = "terraform-1"
  }
}

resource "aws_instance" "main-2" {
  ami                    = "ami-0236922087fa98b6e"  
  instance_type          = "t3.micro"               
  key_name               = "myfkey"
  disable_api_stop = false
  disable_api_termination = true
  subnet_id              = aws_subnet.pub-1.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
 

  tags = {
    Name = "terraform-2"
  }
}

resource "aws_instance" "main-3" {
  ami                    = "ami-0236922087fa98b6e"  
  instance_type          = "t3.micro"               
  key_name               = "myfkey"
  disable_api_stop = false
  disable_api_termination = true
  subnet_id              = aws_subnet.pub-2.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
 

  tags = {
    Name = "Bastion-host-TF"
  }
}

resource "aws_instance" "main-4" {
  ami                    = "ami-0236922087fa98b6e"  
  instance_type          = "t3.micro"               
  key_name               = "myfkey"
  disable_api_stop = false
  disable_api_termination = true
  subnet_id              = aws_subnet.priv-1.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
 

  tags = {
    Name = "website_test_I"
  }
}

resource "aws_instance" "main-5" {
  ami                    = "ami-0236922087fa98b6e"  
  instance_type          = "t3.micro"               
  key_name               = "myfkey"
  disable_api_stop = false
  disable_api_termination = true
  subnet_id              = aws_subnet.priv-2.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
 

  tags = {
    Name = "website_test_II"
  }
}



