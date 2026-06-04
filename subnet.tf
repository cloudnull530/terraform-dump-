resource "aws_subnet" "pub-1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "terraform-pub-1"
  }
}

resource "aws_subnet" "pub-2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "terraform-pub-2"
  }
}

resource "aws_subnet" "priv-1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "terraform-priv-1"
  }
}

resource "aws_subnet" "priv-2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "terraform-priv-2"
  }
}