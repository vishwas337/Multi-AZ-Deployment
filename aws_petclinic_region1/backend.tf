terraform {
   backend "s3" {
    bucket         = "vishwas-s3-bucket1" # change this
    key            = "vishwas/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
 }
 }