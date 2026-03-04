# Terraform aws instance

This module creates ec2 instances in AWS.

# Inputs:
* project -(Required) string type , must provide provide project name ex: "roboshop"
* environment - (Required) string type, user must provide desired environment ex: Dev,
* ami_id - (Required)- string type, user must provide ami_id of the instance
* instance_type -(optional) string type , default value is t3..Users can override
* sg_ids -(Required)-list(string)-users must of provide list of security group id's instance should have
* tags -(optional) -list type, user can provide the tags they want to have

# outputs:
* instance_id --ID of the instance created
* public_ip -public_ip of the instance created
* private_ip--private ip of the instance created







