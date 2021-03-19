
variable "instance_types" {
    description = "The instance classes to use"
    type = list(string)
}

variable "access_port" {
    description = "Access port to use for the application"
    type = number
    default = 80
}

variable "app_names" {
    description = "The name of the application deployment"
    type = list(string)
}