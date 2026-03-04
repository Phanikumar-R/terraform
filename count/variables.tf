variable "instances" {

    type =list
    default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","frontend"]

}

variable "zone_id" {

   default = "Z104354227Z66ZI6A1KBL"
}

variable "domain_name" {

    default = "devopsskillup.online"
}

variable "fruits" {
    type = list(string)
    default = ["apple","banana","apple","orange"]

}

variable "fruits_set" {

    type = set(string)

    default = ["apple","banana","apple","orange"]
} 