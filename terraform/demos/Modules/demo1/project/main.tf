provider aws {
    profile = "rod"
    region = "us-east-1"
} 

variable "app-name" {
    type = string
    default = "demo project"
}

# This imports the content of all of the files in the source directory
# Notice that the "terraform init" command run from this directory also
# initializes the module

module "EC2Defs" {
    source = "../modules/EC2"
}