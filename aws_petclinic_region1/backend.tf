terraform {
   backend "s3" {
    bucket         = "vishwas-terraform" # change this
    key            = "vishwas/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
 }
 }