variable "common_tags" {


    default = {

        Project ="roboshop"
        Terraform = true
        Environment = "dev"

    }
}


variable "ec2_tags" {


    default = {

        Name="functions-demo"
        Environment ="QA"

    }
}

variable "sg_tags" {


    default = {

        Name ="security tags demo"
    }
}