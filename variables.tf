variable "instance" {
  description = "This variable states the instance type for your EC2"
  default     = "t2.micro"
}

variable "ami" {
  description = "ami id for which image to use with EC2 instance"
  default     = "ami-07ee42ba0209b6d77"
}

variable "key_name" {
  description = "name of key to be used for instance"
  default     = "forrow"
}

variable "region" {
  description = "region where instance is to be initialised"
  default     = "eu-west-1"
}

variable "cidr_block" {
  default = "4.4.0.0/16"
}

variable "subnet_cidr_block" {
  default = "4.4.1.0/24"
}

variable "sg_web_name" {
  default = "DefaultSGWeb"
}

variable "sg_web_description" {
  default = "Allow SSH"
}

variable "open_internet" {
  default = "0.0.0.0/0"
}

variable "ingress_ports" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [22, 8080, 80, 22]
}

variable "outbound_port" {
  default = 0
}