terraform {
  backend "s3" {
    bucket         = "arth-bucket" 
    region         = "us-east-1"
    encrypt        = true
    use_lockfile = true
  }
}