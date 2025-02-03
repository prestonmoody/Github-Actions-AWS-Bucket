provider "aws" {
  region = "us-east-2" # Update this as per your AWS region
}

resource "aws_s3_bucket" "my_test_bucket" {
  bucket = "renos3"
}

resource "aws_instance" "my_test_instance" {
  ami           = "ami-0eb070c40e6a142a3"
  instance_type = "t2.micro"
  tags = {
    Name = "MyTestInstance"
  }
}

