module "ec2" {

    source = "../terraform-aws-instance"
    ami_id = "ami-0220d79f3f480ecf5"
    sg_ids = []
    project = "my-project"
    environment = "dev"
}