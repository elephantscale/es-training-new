# Examples Notes

These notes document how I work with the examples in the terrafor class.

## Module 02

### Example 1

This example is basically the code as presented in the slides. My personal preference is to just do the example dynamically so students can see the process.
 All the steps are captured in the slides as well.

#### Example workflow
1. Discuss the code
2. Run the init command
    - show the .terraform directory and discuss what happened to create it
3. Run the plan command
    - show the state file - explain where it came from
    - review the plan output
    - check the AWS console to show there are no resources
4. Run apply
    - walk through the output including the output variables
    - check the AWS console to show the resources now exist
5. Run destroy
    - walk through the output of the command
    - check the AWS console to show the resources no longer exist
    
#### Lab 02-01

This lab will essentially be a recap of the example.

---
### Example 2

Demonstrates the use of variables by modifying the code of example 1

#### Example workflow

1. Explain contents of the variables file. The AMI variable has a default, but the instance type does not.
2. Run the code as is and show the variable for AMI is incorporated, but you are prompted for the value of the instance type
3. Add the terraform.tfvars file and show that the value is read from the file

#### Lab 02-02

In this lab the students modify the previous lab result to use variables

---

### Example 3

Creates a local variable "Name" and uses string interpolation to set the tag on the instance




