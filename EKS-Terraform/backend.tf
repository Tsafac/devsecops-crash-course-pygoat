terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket = "backend88364" # Replace with your actual S3 bucket name
    key    = "terraform.tfstate"
    region = "ap-south-1" # ap-south-1
  }
}