# This is map
/* variable "instances" {

    type = map
    default = {
        mongodb = "t3.micro"
        redis = "t3.micro"
        user = "t3.micro"
        shipping = "t3.small"

    }
} */


# This should be converted into set

variable "instances" {

    type =list
    default = ["mongodb","redis"]

}


variable "zone_id" {

   default = "Z104354227Z66ZI6A1KBL"
}

variable "domain_name" {

    default = "devopsskillup.online"
}