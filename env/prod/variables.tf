variable "region" {
    description = "The target region for the IaC"
    type = string
}

variable "display_name" {
    description = "The name displayed for the Budget"  
    type = string
}

variable "topic_name" {
    description = "The name of the SNS Topic"  
    type = string
}

variable "budget_name" {
    description = "The name of this Budget"  
    type = string
}

variable "account" {
    description = "The owner account for this Budget"  
    type = string
}