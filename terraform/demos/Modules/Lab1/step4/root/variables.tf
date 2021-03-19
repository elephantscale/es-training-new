variable "ami_type" {
    description = "The ami to use depending on region"
    type = string
}

variable "instance_type" {
    description = "The instance class to use"
    type = string
    default = "t2.nano"
}

variable "access_port" {
    description = "Access port to use for the application"
    type = number
    default = 80
}

variable "app_name" {
    description = "The name of the application deployment"
    type = string
    default = "Hello World"
}