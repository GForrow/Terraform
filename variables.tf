variable "instance" {
    description = "This variable states the instance type for your EC2"
    default = "t2.micro"
}

variable "ami" {
    description = "ami id for which image to use with EC2 instance"
    default = "ami-07ee42ba0209b6d77"
}

variable "key_name" {
    description = "name of key to be used for instance"
    default = "forrow"
}

variable "region" {
  description = "region where instance is to be initialised"
  default = "eu-west-1"
}
