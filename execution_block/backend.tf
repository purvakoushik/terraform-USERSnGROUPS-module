terraform {
  backend "s3" {
    bucket         = "purva-terraform-bucket"
    key            = "mynew.tfstate"
    region         = "us-east-1"
    dynamodb_table = "purva-terraform-table"
  }
}
