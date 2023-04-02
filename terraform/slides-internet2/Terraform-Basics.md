# Terraform Basics

---
## In this Module

* Getting started with terraform
  * Structure of a terraform application
  * Terraform providers and configuration  
  * Terraform workflow: init, validate, plan, apply and destroy 
  * Basic Hashicorp Configuration Language (HCL) syntax
    * Resources, data sources, variables and outputs
  * Introduction to terraform state
  * Working with resource arguments and attributes
  * Querying AWS data sources

---

## Structure of a Terraform Application

* A Terraform application is made up of modules
  - A module is a directory that contains terraform source files
  - Any text file with a _.tf_ extension is a terraform source file
* The main module we run the _terraform_ utility from is called the __root__ module
  - Every terraform application has a root module
  - The terraform state file is by default in the root module directory  
  - Additional modules are optional (covered later in the course)

---

## Terraform Source Files

* Terraform merges the contents of all the *.tf files in a directory before doing anything
  - This means that you can name your *.tf files whatever you want
  - You can have as many *.tf files as you want in the module
* There can be an optional file _terraform.tfvars_
  - This sets the values of variables when terraform executes
  - This file must be named _terraform.tfvars_
* Terraform ignores all other files in the module that do not have *.tf extension  

Notes

The code referred to in the following slides is example 02-01

When I do this section, I use the example to execute the various stages as I discuss them

---
## Canonical File Names

* The Terraform community has a file naming convention that is generally adhered to
  - This makes reading terraform source code easier for other developers
* The file are:
  - _variables.tf_: contains variable definitions
  - _outputs.tf_: contains the return value (output) definitions
  - _providers.tf_: contains the provider, versioning and backend configurations
  - _main.tf_: contains the core code - resource definitions,etc.
* If the _main.tf_ starts to become too difficult to read, it is often broken down into subfiles
  - For example, all S3 bucket code might be in _buckets.tf_
    
---

## Canonical Module

* A typical terraform module looks like the screenshot below
* It is considered a professional best practice to use this structure for all terraform work
  - Additional files, like _buckets.tf_ are added when they improve the readability of the code
  

<img src="../artwork/CannonicalFiles.png" style="width:55%;"/> <!-- {"left" : 4.42, "top" : 6.55, "height" : 4.51, "width" : 8.66} -->

---

## Non-Canonical Modules

* The screenshot below shows a non-canonical module structure
  - This will still work, terraform does not care what we name the files
* Note: we cannot rename _terraform.tfvars_ or terraform will ignore it

<img src="../artwork/NonCannoicalFiles.png" style="width:55%;"/> <!-- {"left" : 3.96, "top" : 5.97, "height" : 4.81, "width" : 9.57} -->

---

## The Five Basic Terraform Constructs

1. Configuration Directives: these include _provider_ and _terraform_
2. _resource_: specifies an AWS resource managed by terraform
3. _data_ : specifics a resource in the AWS environment that we want to query
4. _variable_: defines an input to a terraform module
5. _output_: defines a return value or output from the module

---
## The providers.tf File

* The _providers.tf_ File

<img src="../artwork/example-02-01-providers.png" style="width:55%;"/> <!-- {"left" : 4.87, "top" : 4, "height" : 6.88, "width" : 7.76} -->


---

## The quote directive

* The `*` directive 
* Specifies the plugins needed to communicate with the cloud vendor(s)
  - Defines the location of the plugins and versions
  - Defines location of the Terraform backend (covered later)
* This directive can be omitted 
  - Then defaults values will be used
  - Some defaults are inferred from the _provider_ directive
  
---
## The provider directive

* The _provider_ directive
* The provider directive contains configuration information specific to a provider
  - AWS needs different configuration information (like a region) than does Azure or Google Cloud
* There can be more than one provider
  - Different providers are identified by aliases
  - The provider without an alias is the default provider
  - Multiple providers are demonstrated later
  
---

## The main.tf File

* The _main.tf_ file
* Two resources are defined in the file that are going to be managed by terraform
  - An EC2 instance and an S3 bucket
* The default VPC, not managed by terraform, is identified as a data source

<img src="../artwork/example-02-01-main.png" style="width:55%;"/> <!-- {"left" : 11.09, "top" : 1.63, "height" : 6.24, "width" : 6.01} -->

---

## The "resource" Directive - Arguments

* The _resource_ Directive - Arguments
* Always start with the keyword _resource_ 
* Followed by a string ("aws_instance") which identifies the type of resource
* Followed by a string ("myVM") which is how the resource is referred to in the terraform code
* Followed by a list of arguments used to create the resource
  - Some arguments are mandatory, like the _ami_ and _instance_type_ for an EC2 instance
  - Some arguments are mandatory but have defaults, like _versioning_ on S3 buckets 
  - Some arguments are optional, like defined tags
* For each resource, there is a documentation page describing all the attributes associated with a specific resource
  - _https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance_
  - The documentation also provides examples of how to define the resource
  
---

## The "resource" Directive - Attributes

* The _resource_ Directive - Attributes
* Some properties of a resource are assigned by AWS
  - These are referred to as _attributes_
  - Like public_ip of an EC2 instance or the arn of a bucket for example
  - These are defined by AWS but can be accessed by us after the resource is created
* Syntax for accessing the public IP of _myVM_ for example:
  - _aws_instance.myVM.public_ip_
* Once created, all the arguments we provided are also accessible as attributes
  - The documentation page for the resource also lists all the attributes available

--- 

## The "data" Directive

* The _data_ Directive
* References a type of resource that is not under terraform control
  - We supply attributes that are used to identify the specific resource
* In the _main.tf_ file we look for a "aws_vpc" where the attribute _default_ has the value _true_
    - We need to provide enough information to uniquely identify the resource we are looking for
    - For example, there may be many VPCs in a region, but only one default VPC  
* Later we will look at ways of searching for specific resources
  
<img src="../artwork/example-02-01-main-data.png" style="width:55%;"/> <!-- {"left" : 10.47, "top" : 2.24, "height" : 1.7, "width" : 6.66} -->

 ---

## The "output" Directive

* The _output_ Directive
* Returns a value, usually an attribute of AWS resource
  - In the root module, the value is returned to the command line where it is printed out
  - We can also specify an output file where the returned values will be stored
* Including a _description_ is considered to be a best practice
* The _value_ parameter is what the defined output returns

<img src="../artwork/example-02-01-outputs.png" style="width:55%;"/> <!-- {"left" : 9.89, "top" : 2.1, "height" : 3.4, "width" : 7.15} -->


---
## The Terraform Workflow

* Terraform is a declarative language
  - The *.tf source files only describe the final state the AWS environment should be in
  - How to implement the requested state is figured out by terraform
- The basic flow is:
  1. Model the desired state of the AWS environment by reading the terraform source code files
  2. Fetch a description of the actual AWS environment state
  3. Compare the actual and desired states
  4. Compute a plan for changing the existing environment so that it conforms to the desired state
  5. Create a series of actions to be executed to implement the plan
  6. Apply the actions
  
---

## The Terraform Workflow

* The workflow is implemented through a series of terraform commands
1. _init_ - scans the source files and updates the local providers
2. _validate_ - checks for syntax errors in the *.tf files
3. _plan_ - creates an implementation plan
4. _apply_ - implements the implementation plan
5. _destroy_ - removes all AWS resources defined in this module

---

## The Terraform Workflow

* The _apply_ command automatically runs _validate_ and then _plan_
  - _apply_ can also apply a saved plan
* The _plan_ command automatically runs _validate_
    - _plan_ can also save the plan to a file for later application
* Running _validate_ on its own is a lot faster for quick syntax checks

---

## Example - Init Output

<img src="../artwork/terraform-init-2.png" style="width:55%;"/> <!-- {"left" : 2.84, "top" : 2.05, "height" : 8.3, "width" : 11.83} -->


---

## Example - Plan Output

<img src="../artwork/Terraform-Plan-2.png" style="width:55%;"/> <!-- {"left" : 1.46, "top" : 4.04, "height" : 4.32, "width" : 14.57} -->

---

## Example - Plan Output

<img src="../artwork/Terraform-Plan-2a.png" style="width:55%;"/> <!-- {"left" : 2.63, "top" : 3.93, "height" : 4.53, "width" : 12.24} -->

---

## Example - Apply Output

<img src="../artwork/Terraform-Apply-2.png" style="width:55%;"/> <!-- {"left" : 1.32, "top" : 4.29, "height" : 3.82, "width" : 14.87} -->


---

## Example - Apply Output

<img src="../artwork/Terraform-apply-2a.png" style="width:55%;"/> <!-- {"left" : 3.18, "top" : 2.28, "height" : 7.84, "width" : 11.14} -->


---

## Lab 2-1

* Please do Lab 2-1

Notes:

This lab just gets students writing a basic terraform application with a bunch of hardcoded values


---

## Terraform Variables

* Variables are used to replace hardcode values, like the instance type, in terraform code
* Variables are of a particular data type, but default to string
* Variables can have an optional default value
* If a value for a variable is not provided, then the use is prompted to supply the value at the command line when _terraform plan_ is run
* Variables are reference by using the syntax:
  - _var.<variable-name>_ 
  - An older deprecated syntax you might see in legacy code is _${var.<variable-name>}_

Notes:
Example 2-2 has the code used in the slides following
---
## Defining Variables

* In the _variables.tf_ file, two variable are defined
  - There is a default defined for the _ami_type_
  - The default is used _only_ if the variable is not assigned a value anywhere
* The value for the _inst_type_ variable is assigned in the _terraform.tfvars_ file

<img src="../artwork/Vardefs.png" style="width:55%;"/> <!-- {"left" : 13.09, "top" : 2.36, "height" : 2.37, "width" : 3.94} -->

<img src="../artwork/VarsTFvars.png" style="width:55%;"/> <!-- {"left" : 9.52, "top" : 5.02, "height" : 1.79, "width" : 7.54} -->




---

## Using Variables

* The hardcoded values for the arguments can now be replaced with variables


<img src="../artwork/VarUseage.png" style="width:55%;"/> <!-- {"left" : 10.01, "top" : 1.81, "height" : 4.2, "width" : 7.08} -->

---

## Output Return Values

* The outputs now validate that the actual attributes of the EC2 were set by the variables

<img src="../artwork/VarsOutputs.png" style="width:55%;"/> <!-- {"left" : 4.58, "top" : 5.38, "height" : 4.11, "width" : 8.35} -->



---
## Lab 2-2

* Please do Lab 2-2

Notes:

This lab has students replace hardcoded values with variables


---

## String Interpolation

* Any attribute or value can be embedded in a string by using `string interpolation`
  - The interpolation syntax is ${value} to insert "value" into string
 - Non-string values are converted to a string for interpolation

<img src="../artwork/VarInterp1.png" style="width:55%;"/> <!-- {"left" : 2.13, "top" : 7.11, "height" : 2.03, "width" : 13.24} -->


Notes: 

Modifying the output to use string interpolation is demo 3

---
## Local Variables

* Just like in a programming language, we can define local variables that can be used within a module
  - Local variables cannot be referenced outside the module
  - Local variables are defined in a `locals` block
  - Local variable definitions can be split across more than one `locals` block
  - Local variables are referenced with the syntax `local.<name>`
  
<img src="../artwork/Locals1.png" style="width:55%;"/> <!-- {"left" : 10.26, "top" : 2, "height" : 4.29, "width" : 6.73} -->


---
## Primitive Data Types

* Variables and locals are typed data
* There are three primitive data types
  - _string_: A Unicode string
  - _numeric_: Used for both integral and non-integral values (434 and 1.34)
  - _boolean_: `true` and `false`
* There are also complex data types like lists and maps which will be covered in a later module.

<img src="../artwork/DataTypes.png" style="width:55%;"/> <!-- {"left" : 10.84, "top" : 1.77, "height" : 3.22, "width" : 6.16} -->

---

## Heredoc Strings

* Terraform haa "heredoc" string literal like , which allows multi-line strings to be expressed more clearly.
* A heredoc string consists of:
  - An opening sequence consisting of:
    - A heredoc marker (<< or <<- — two less-than signs, with an optional hyphen for indented heredocs)
    - A delimiter word of your own choosing
    - A line break
  - The contents of the string, which can span any number of lines
  - The delimiter word you chose, alone on its own line (with indentation allowed for indented heredocs)

<img src="../artwork/Heredoc.png" style="width:55%;"/> <!-- {"left" : 10.76, "top" : 1.13, "height" : 1.8, "width" : 6.35} -->


Notes:

Example 2-5 demonstrates heredoc strings

---

## Reading Files

* Local variables _must_ be initialized when defined
  - We cannot set their value with a `terraform.tfvars` entry
* The alternative to hardcoding a local variable is to read its value from a file
  - This is generally done when the variable is used to provide some metadata like the ID of the person running the code
  - Or when the variable contains text like a start-up script
* We use the `file` command to read in the contents of a text file


<img src="../artwork/FileInput.png" style="width:55%;"/> <!-- {"left" : 12.68, "top" : 2.96, "height" : 1.68, "width" : 4.32} -->

<img src="../artwork/FileInput2.png" style="width:55%;"/> <!-- {"left" : 12.04, "top" : 4.85, "height" : 2.07, "width" : 4.98} -->



Notes:

Example 2-6 demonstrates reading a file

---

## Lab 2-3

* Please do Lab 2-3

Notes:

This lab has students implement local variables and reading from a file

---

## Template Files

* Using files provides some flexibility, but often we want to customize the contents of the file using some terraform variables
* To provide this facility, Terraform has a _templatefile_ which
    -  Reads in file with "slots" defined using string interpolation syntax
    -  Supplies arguments to fill in the slots
* In the example below
    - The template file _document.txt_ has a "slot" for "myname" that can be filled in
    - _This code was modified by ${myname}_
    - A local variable called _developer_ used to fill in the slot
  
<img src="../artwork/templatefile1.png" style="width:55%;"/> <!-- {"left" : 11.12, "top" : 2.62, "height" : 2.21, "width" : 5.86} -->

Notes:

Example 2-7 illustrates the use of a templatefile

---
## Rendered Template File

* When all the variables are inserted into the template string, the result is said to be rendered

* The rendered string can be output as shown below



---

## Lab 2-4

* Please do Lab 2-4

Notes:

This lab has students convert the file in the previous lab into a template file

---

## Data Filters

* Earlier, the _data_ construct was introduced as a way to find AWS resources
* A problem that has been sidestepped so far is that the aws_instance code is not portable across regions because the ami instance id's are unique to a region
* To resolve this, a data resource can be used get a specific ami id in a region
  - The problem is trying to find just the one wanted
* The solution is to list all the properties the ami template has and then filter each property to perserve only the ones we want
  - This is not an ad-hoc solution but requires a knowledge of the attributes of the resource to be filtered 
  - _And_ a specification of which attribute we want to query on
  
Notes:

The code for this and in the screenshots on the next slide are example 2-8

---

## AMI Example

<img src="../artwork/DataFilter1.png" style="width:55%;"/> <!-- {"left" : 4.27, "top" : 2.84, "height" : 4.75, "width" : 8.96} -->


<img src="../artwork/DataFilter2.png" style="width:55%;"/> <!-- {"left" : 4.28, "top" : 8.18, "height" : 2.38, "width" : 8.93} -->



---

## Multiple Providers

* So for, all the code examples have used a default provider, but we can specify another provider by using an alias.
* In this _providers.tf_, the default provider is AWS region _us-east-2_, but a second provider for _us-east-1_ can be set with the alias "Virginia"
* We could have also had any other providers, like an Azure provider as well

<img src="../artwork/providers1.png" style="width:55%;"/> <!-- {"left" : 11.28, "top" : 2.28, "height" : 3.63, "width" : 5.81} -->

Notes:

This is example 2-9

---

## Using Multiple Providers

* For a Terraform resource, the _providers_ argument specifies which provider will manage the resource
  - In no provider is specified, the default provider is used
* In the example below, the EC2 instance "Ohio" is being created by the default provider while "Virginia" is being created by the us-east-1 provider

<img src="../artwork/providers2.png" style="width:55%;"/> <!-- {"left" : 11.45, "top" : 2.04, "height" : 5.01, "width" : 5.58} -->


---

## Lab 2-5

* Please do lab 2-5
* This is a bit more challenging to end the module

