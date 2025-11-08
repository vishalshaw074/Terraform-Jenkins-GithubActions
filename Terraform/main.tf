terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"  # Change this to your desired region
}


# Call the EC2 instance module
module "ec2_instance" {
  source = "./modules/ec2-instance"

  ami_id        = var.ami_id
  instance_type = var.instance_type
  instance_name = var.instance_name
  key_name      = var.key_name
}

