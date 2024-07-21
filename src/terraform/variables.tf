variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "sa-east-1"
}

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-03c3a7e4263fd998c"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t3.micro"
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name = "Terraform instace"
    OS   = "Linux"
  }
}

variable "aws_access_key" {
  type        = string
  description = ""
  default     = ""
}

variable "aws_secret_key" {
  type        = string
  description = ""
  default     = ""
}