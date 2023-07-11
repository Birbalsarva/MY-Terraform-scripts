terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "my_ec2_instance" {
  count         = 2
  ami           = "ami-0310483fb2b488153"
  instance_type = "t2.micro"
  
  tags = {
    Name = "terraform_aws_ec2-${count.index}"
  }
}

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "birbal-terraform-1234"
  
  tags = {
    Name        = "birbal-terraform-1234"
    Environment = "Dev"
  }
}

output "ec2_public_ips" {
  value = aws_instance.my_ec2_instance[*].public_ip
}
