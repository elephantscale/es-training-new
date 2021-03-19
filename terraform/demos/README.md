# Notes for Demos
These were created on the fly for the class

1.  To make the process easy, I created a local AWS profile "rod" to reuse my credentials. You will see this in all the examples, I just told the students to create their own and replace it.
2.  The Teraform Basics are just simple examples that some students wanted once I did them in class
3.  The s3 backend was for the state module. I just used a local backend for the S3 bucket state.  The one change from the book that you will notice is that if you try and create a project using the s3 backend, you will get a credentials error. Adding the profile line like in the code eliminates the error.
4.  The module section contains a lab that is just a progression in stages of moving some code into a module in a series of stages to illustrate the process
5. The isolating state demo was used to illustrate isolation along with working with workspaces
6. The simple example in State was just where I went from a local state to a remote state and back again. It replicates some of the code from the s3backend chunk
7. In modules, demo1 is just a demo of a module

### Modules lab1 demo
For this module, I created an initial file with the code for a Ec2 instance and a security group
* step 0: staring code - posed the problem how do we connect them
* step 1: use a reference to connect the resources
* step 2: use variable and a rfvars file to "modularize" with the variables providing an interface to the code
* step 3: Posed the problem of creating more than one instance and looked at the repeated code
* step 4: Created a server module but everything is hardcoded in module, posed problem of how to make it reusable
* step 5: Used variables in module to pass parameters
* step 6: Made the server module reusable
* step 7: Made the security group into a module and showed how to pass data between modules