terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.66"
    }
  }
}
provider "aws" {


  region = "ap-south-1"

}