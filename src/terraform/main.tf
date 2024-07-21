terraform {

}

provider "aws" {

  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_s3_bucket" "my-terraform-s3-bucket" {

  bucket = "falciro-terraform-bucket-1995"

  tags = {
    Name        = "Bucket name"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Matheus"
  }
}

resource "aws_instance" "my-terraform-ec2-instance" {

  ami           = var.instance_ami
  instance_type = var.instance_type
  tags          = var.instance_tags
}

# resource "aws_s3_bucket_acl" "my-terraform-bucket-acl" {
#   bucket = aws_s3_bucket.my-terraform-s3-bucket.id
#   acl    = "public-read"
# } 