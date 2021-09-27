provider "aws" {
    region = var.region
}

terraform {
    backend "s3" {
        bucket = "mcconville-terraform-state-bucket"
        key = "global/s3/terraform.tfstate"
        region = "us-east-2"
        dynamodb_table = "mcconville-terraform-backend-locks"
        encrypt = true
    }
}

module "budget_forecasted" {
    #source       = "../../../aws_budgets_terraform/modules"
    source       = "git::https://github.com/LarryMcConville/aws_budgets_terraform.git//modules"
    region       = var.region
    account      = var.account
    topic_name   = var.topic_name
    display_name = var.display_name
    budget_name  = var.budget_name
}