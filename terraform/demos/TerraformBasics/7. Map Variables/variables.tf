variable "my_type" {
  type    = map
  default = {
    amitype = "ami-047a51fa27710816e",
    insttype ="t2.micro"}
} 

variable "ami-us-east-1" {
  #type    = string
  default = "ami-047a51fa27710816e"
  description = "Default EC2 ami for us-east-1"
} 
