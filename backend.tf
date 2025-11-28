terraform {
  backend "s3" {
    bucket = "myproject23355-tfstate"
    key = "state/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}