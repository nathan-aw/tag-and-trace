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
  region = "ap-southeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-005835d578c62050d"
  instance_type = "t2.micro"

  tags = {
    Name      = "ExampleAppServerInstance"
    Name      = "ExampleAppServerInstance"
    git_org   = "nathan-aw"
    git_repo  = "tag-and-trace"
    yor_trace = "2d14f3c3-4b50-4a11-9530-3edb117bc5e8"
  }
}
