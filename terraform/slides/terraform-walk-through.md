# Terraform Walk-Through

# Getting started with Terraform

## The Plan

* Getting started with Terraform
    * Setting up your AWS account
    * Installing Terraform
    * Deploying a single server
    * Deploying a single web server
* More advanced configuration
    * Deploying a configurable web server
    * Deploying a cluster of web servers
    * Deploying a load balancer
    * Cleaning up

---

## We Will Use AWS
* The most popular cloud infrastructure provider, by far. It has a 45% share in the cloud infrastructure market, which is more than the next three biggest competitors (Microsoft, Google, and IBM)
* Provides a huge range of reliable and scalable cloud-hosting services
* Generous Free Tier for the first year
    * Or use <myname+1@gmail.com> kind of address
    * If you already used up your free tier credits, the examples in the labs should still cost you no more than a few dollars.

---
    
## Setting Up Your AWS Account
* If you don’t already have an AWS account, head over to https://aws.amazon.com and sign up
* The _only_ thing you should use the root user for is to create other user accounts with more-limited permissions, and then switch to one of those accounts immediately
* Here are the permissions you will need (for some labs)
    * AmazonEC2FullAccess

    * AmazonS3FullAcces

    * AmazonDynamoDBFullAccess

    * AmazonRDSFullAccess

    * CloudWatchFullAccess

    * IAMFullAccess

* If you are using an existing AWS account, it must have a Default VPC in it. 
* If the instructor provided a student account, you can use that    
Notes:

---         
## Install Terraform

* Download the `terraform` executable from the [Terraform home page](https://www.terraform.io/)
* Depending on your OS, you may also install a native package
* For Mac
    * `brew install terraform`
* You may use a cloud server if provided by the instructor    
* You may use Terraform cloud account
![](../../assets/images/terraform/terraform-cloud-account.png)

---
## Verify `terraform` Version

* Ubuntu example

 
    Terraform v0.12.20
    
    Your version of Terraform is out of date! The latest version
    is 0.12.24. You can update by downloading from 
    https://www.terraform.io/downloads.html

* OK... Update [here](https://www.howtoforge.com/how-to-install-terraform-on-ubuntu-1804/)

![](../../assets/images/terraform/terraform-version.png)

## Now What?

![](../../assets/images/terraform/terraform-help.png)

## Connect to AWS

* Set up AWS credentials

```
$ export AWS_ACCESS_KEY_ID=(your access key id)
$ export AWS_SECRET_ACCESS_KEY=(your secret access key)
```

*
* This will only give you the setup for this shell
* To make it work after reboot, put it into `.bashrc`

```
    vi .bashrc 
```

* Terraform supports the same authentication mechanisms as all AWS CLI and SDK tools
* Therefore, it’ll also be able to use credentials in $HOME/.aws/credentials
    * These are automatically generated if you run the `configure` command on the AWS CLI, or IAM

---
## Lab: Terraform Hello World

* Please do this lab 
* `code/terraform/00-preface/hello-world`
* [Here](https://github.com/elephantscale/terraform-up-and-running-code/tree/master/code/terraform/00-preface/hello-world)

---

## Prepare to Deploy a Server

* Create an empty folder
* Put in a file called `main.tf`
* Put in there (it means what it says)

      provider "aws" {
        region = "us-east-2"
      }
      
* Now added resources      

![](../../assets/images/terraform/terraform-resources.png)

---

## Server Resource

     resource "aws_instance" "example" {
       ami           = "ami-0c55b159cbfafe1f0"
       instance_type = "t2.micro"
     }
     
* ami
    * The Amazon Machine Image (AMI) to run on the EC2 Instance. 
    * You can find free and paid AMIs in the AWS Marketplace 
    * or create your own using tools such as Packer
    * This ami parameter to the ID of an Ubuntu 18.04 AMI in us-east-2. This AMI is free to use

* instance_type
    * The type of EC2 Instance to run
    * Each type of EC2 Instance provides a different amount of CPU, memory, disk space, and networking capacity. The EC2 Instance Types page lists all the available options 
    * t2.micro, which has one virtual CPU, 1 GB of memory, and is part of the AWS free tier

---
## Do Not Try to Remember by Heart

* Terraform supports dozens of providers
* Each of which supports dozens of resources
* Each resource has dozens of arguments
* We recommend using the documentation. 
    * Here is an [example for ami](https://www.terraform.io/docs/providers/aws/r/instance.html)
    
* Now run `terraform init`

---
## Result of `terraform init`

![](../../assets/images/terraform/terraform-init.png)

---
## Result of "terraform plan"

```
$ terraform planRefreshing 
Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.
------------------------------------------------------------------------
An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.example will be created
  + resource "aws_instance" "example" {
      + ami                          = "ami-0c55b159cbfafe1f0"
Plan: 1 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.
```     

---
## Result of "terraform apply"

```

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.example will be created
  + resource "aws_instance" "example" {
      + ami                          = "ami-0c55b159cbfafe1f0"
...
}

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.example: Creating...
aws_instance.example: Still creating... [10s elapsed]
aws_instance.example: Still creating... [20s elapsed]
aws_instance.example: Creation complete after 24s [id=i-0a4dfc4992739cb6e]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
 
```
---
## Verify the Deployment Result

* Go to AWS dashboard
* Verify that the server was created


![](../../assets/images/terraform/terraform-apply-01.png)
---

## Let Us Give Our Server a Name

* Add to your `main.tf`
    * (remove the previous server definition)

```
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }
}
```

* Run `terraform apply`
* Verify that we gave our server a name

![](../../assets/images/terraform/terraform-apply-02.png)
---

## Deploy a Single Web Server

![](../../assets/images/terraform/deploy-web-server.png)

---
## Make a Web Server
* In the real world, you would build a real web server such as Flask
* We will, instead, do a one-command

```
#!/bin/bash
echo "Hello, World" > index.html
nohup busybox httpd -f -p 8080 &
```

* However, how should we put it into our instance?
* We will add it to the aws_instance, as _User Data_ configuration

## Adding a Script to the Instance

*  You pass a shell script to User Data by setting the user_data argument in your Terraform code as follows:

* The `<<-EOF` and `EOF` are Terraform’s `heredoc` syntax, which allows you to create multiline strings without having to insert newline characters all over the place

```shell script
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
```
---

## Wait! One More Thing

* By default, AWS does not allow any incoming or outgoing traffic from an EC2 Instance. 
* To allow the EC2 Instance to receive traffic on port 8080, you need to create a security group:
* Creates a new resource called `aws_security_group`

```shell script
resource "aws_security_group" "instance" {
  name = "terraform-example-instance"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
```

## CIDR Blocks

* The `ingress` in this group allows incoming TCP requests
    * on port 8080 from the CIDR block 0.0.0.0/0
* CIDR blocks are a concise way to specify IP address ranges
* For example
    * a CIDR block of 10.0.0.0/24 
    * represents all IP addresses between 10.0.0.0 and 10.0.0.255
* The CIDR block 0.0.0.0/0 is an IP address range that includes all possible IP addresses, so this security group allows incoming requests on port 8080 from any IP

---

## Passing the Security Group ID

* You also need to tell the EC2 instance to actually use the security group by passing the group's ID
* It goes into the `vpc_security_group_ids` argument of the `aws_instance resource`.
* This is done with Terraform expressions

---

## Terraform "expressions"

* An expression in Terraform is anything that returns a value
* The simplest type of expressions are literals
    * strings: "ami-0c55b159cbfafe1f0"
    * numbers: 7
* Here we need an expression which is a reference

```shell script
<PROVIDER>_<TYPE>.<NAME>.<ATTRIBUTE>

In our case

aws_security_group.instance.id
```
    
## Altogether

![](../../assets/images/terraform/terraform-example-01.png)

## New Result of "terraform plan"

```shell script

Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

aws_instance.example: Refreshing state... [id=i-0a4dfc4992739cb6e]
...
  # aws_security_group.instance will be created
  + resource "aws_security_group" "instance" {
...
Plan: 2 to add, 0 to change, 1 to destroy.
```
---

## New Result of "terraform apply"

![](../../assets/images/terraform/terraform-apply-02.png)

---
## Et Voila!

![](../../assets/images/terraform/terraform-apply-03.png)

---
## Test the Deployment

```shell script
$ curl http://<EC2_INSTANCE_PUBLIC_IP>:8080
Hello, World
```

```shell script
$ curl http://18.188.2.30:8080
Hello, World
```
![](../../assets/images/terraform/terraform-result-00.png)

---

## Terraform Dependencies

* When you add a reference from one resource to another, you create an implicit dependency

* Terraform
    * Parses these dependencies
    * builds a dependency graph from them
    * uses that to automatically determine in which order it should create resources 
    
* To see the dependencies, you use the command

```shell script
     terraform graph
```
---
    
## Terraform Graph Output  
![](../../assets/images/terraform/graph.dot.png)

---

## Terraform Graph Visual

* Use a desktop app such as Graphviz or 
* webapp like [GraphvizOnline](http://dreampuf.github.io/GraphvizOnline)
![](../../assets/images/terraform/graph.png)  
---

## Lab: Server Deployment

* Please do this lab: 
* `code/terraform/01-why-terraform/web-server/step1/` 
* [Here](https://github.com/elephantscale/terraform-up-and-running-code/tree/master/code/terraform/01-why-terraform/web-server/step1)
* In this lab, we practice server deployment
---

## NETWORK SECURITY

* All our example deploy not only into your Default VPC (as mentioned earlier), but also the default subnets of that VPC
* Running a server in a public subnet is fine for a quick experiment, but in real-world usage, it’s a security risk
* For production systems, you should deploy all of your servers, and certainly all of your data stores, in private subnets
    * These have IP addresses that can be accessed only from within the VPC and not from the public internet
![](../../assets/images/terraform/photo-of-guy-fawkes-mask-with-red-flower-on-top-on-hand-38275.jpg)

Notes: 

Source: https://www.pexels.com/
---      

# Using Variables for Configuration

## Deploy a Configurable Web Server

* Don’t Repeat Yourself (DRY) principle
* However, we violated it
    * the web server port 8080 is duplicated in both the security group and the `User Data` configuration
* So, DRY:
    * every piece of knowledge must have a single, unambiguous, authoritative representation within a system

![](../../assets/images/terraform/close-up-close-up-view-dry-environment-141489.jpg)
        
Notes: 

Source: https://www.pexels.com/
---   

## Terraform Input Variables

```shell script
variable "NAME" {
  [CONFIG ...]
}
```
* description
    * It’s always a good idea to use this parameter to document how a variable is used

* default, or use these ways:
    * passing it in at the command line (using the -var option)
    * via a file (using the -var-file option)
    * via an environment variable 

* type
    * enforce type constraints on the variables a user passes in
    * type constraints: string, number, bool, list, map, set, object, tuple, and any

---

## Examples of Terraform Input Variables

* Input variable that checks that the value you pass in is a number:
  
```shell script

  variable "number_example" {
    description = "An example of a number variable
    type        = number
    default     = 42
  }
```

## Examples of Terraform Input Variables

* List input variable with all numbers
  
```shell script

  variable "list_numeric_example" {
    description = "An example of a numeric list
    type        = list(number)
    default     = [1, 2, 3]
  }  
```  

## Examples of Terraform Input Variables

* A map of strings

```shell script

variable "map_example" {
  description = "An example of a map
  type        = map(string)

  default = {
    key1 = "value1"
    key2 = "value2"
    key3 = "value3"
  }
}
```

---
## OO Coding with Terraform!

```shell script
variable "object_example" {
  description = "An example of a structural type"
  type        = object({
    name    = string
    age     = number
    tags    = list(string)
    enabled = bool
  })

  default = {
    name    = "value1"
    age     = 42
    tags    = ["a", "b", "c"]
    enabled = true
  }
}
```
---

## "server_port" Variable

```shell script
variable "server_port" {
  description = "Server port for HTTP requests"
  type        = number
}
```
---
## Using "server_port" Variable

* If you run `terraform apply`, you will get this message:

```shell script
var.server_port
  "Server port for HTTP requests"
  Enter a value:
```

* Your choices now are:
    * Enter a value :)
    * terraform plan -var "server_port=8080"
    * export TF_VAR_server_port=8080
    * Supply a default
        
---
## How to Use Your Variable

* Simply, use `var`, like this: `var.<VARIABLE_NAME>`

* For example

```shell script
resource "aws_security_group" "instance" {
  name = "terraform-example-instance"

  ingress {
    from_port   = var.server_port
    to_port     = var.server_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
```
---

## New Expression - Interpolation

* `"${...}"`

* Now, let us use the same `server_port` inside of `User Data`

```shell script
user_data = <<-EOF
  #!/bin/bash
  echo "Hello, World" > index.html
   nohup busybox httpd -f -p ${var.server_port} &
   EOF
```
---

## Setting an "output" variable

```shell script
output "<NAME>" {
  value = <VALUE>
  [CONFIG ...]
}
```

* description
    * Always a good idea to document
  
* sensitive
    * true will instruct Terraform not to log this output at the end of terraform apply
    * For sensitive material or secrets such as passwords or private keys
---
## Output Variable For Our Script 

```shell script
output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "The public IP address of the web server"
}
```    
---
## Lab: Configure Server Port

* Please do this lab 
* `code/terraform/01-why-terraform/web-server/step2`
* [Here](https://github.com/elephantscale/terraform-up-and-running-code/tree/master/code/terraform/01-why-terraform/web-server/step2)
* In this lab, we practice setting up Terraform variables
---

# Adding Scalability

## Motivation for a Cluster

* Running a single server is a good start, but in the real world, a single server is a single point of failure
* If that server crashes, or if it becomes overloaded from too much traffic, users will be unable to access your site
* The solution is to run a cluster of servers, routing around servers that go down, and adjusting the size of the cluster up or down based on traffic

* We will need the following
    * Auto-scaling group (ASG)
    * VPC
    * Load balancer
    
![](../../assets/images/terraform/bigmusclet.png)    
---

## Auto-Scaling Group

![](../../assets/images/terraform/asg.png)

---


    
