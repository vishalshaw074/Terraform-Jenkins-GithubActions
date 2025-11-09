variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "MyEC2Instance"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0ecb62995f68bb549" # Ubuntu AMI in us-east-1 
}

variable "key_name" {
  description = "Name of the SSH key pair to use for the instance."
  type        = string
  default     = "aws-instance-1" # Set your key pair name here
}
