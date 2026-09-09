provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "arth_instance" {
    ami           = "ami-0b6d9d3d33ba97d99" 
    instance_type = "t3.micro"
    subnet_id = "subnet-0b960b8bd157bcd73"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "arth-bucket"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}