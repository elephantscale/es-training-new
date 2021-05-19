
# Terraform Setup

---

## The Setup Process

* This slide deck demonstrates the process in lab01-01
* Not all of the setup steps will apply to your configuration
* The steps of the setup process are:
  - Getting your AWS account or ID created or configured
  - Setting up an AWS IAM user for the class work
  - Installing the AWS CLI (command line interface)
  - Configuring your AWS credentials on your local machine
  - Downloading and installing terraform
  - Running the "Hello World" terraform test script
  
---

## Your AWS Account

* You need access to an AWS account for this class
* This setup document will cover the following three cases:
  1. You are creating a new AWS account for this class
  2. You are going to be using your own AWS account for the class
  3. You will be using a class provided AWS ID
  
---

## Step One: New Account 

* If you already have an AWS account or an ID, you can skip to step two
* You can create a new free-tier AWS account by going to:
  `https://aws.amazon.com/`
* Selecting the `Create and AWS Account` button will walk you through the process of setting up and AWS account
  - You will need a credit or debit card to set up the account
  - You will also need to use an email address that has not been used to set up an AWS account
  
![](../artwork/AWS-Signup-1.png)

---

## Step One: Free Tier Accounts

* Your account is not "Free" but allows you to access some AWS products and services for free
* _If you are new to AWS, read the details of the Free Tier Account_
  - If you use AWS resources that are _not_ in the free tier, you could incur charges
  - __Keeping your resource usage within the limits of the free tier is YOUR responsibility__
  
![](../artwork/AWS-Free_Tier-1.png)

---

## Step One: Free Tier Usage Rates

* You are allowed a certain amount of free AWS resource usage
* __It is your responsibility to ensure you do not exceed these limits__
  - The instructor will provide pointers on how to ensure your AWS resources in class are cleaned up
  
![](../artwork/AWS-Free_Tier-2.png)

---

## Step Two: Administrative User

* This does not apply to those who are using a class provided AWS ID
  - If you are using your own account, you may have already done this
* When you are logging in with your email, you are the root user
  - You should never use this account for day to day operations
  - It should be only used for billing related work
* Instead, AWS recommends setting up an administrative IAM user

![](../artwork/AWS-Login-1.png)

---

## Step Two: Creating the User

* Go to the IAM service and create a new user
* Ensure the user has both console and programmatic access
* Set the password to what you want
* Disable the "Require Password Reset" option
* Select "Next"
 
![](../artwork/AWS-Create-User-1.png)

---
## Step Two: Adding Permissions

* Select the option to `attach existing policies directly`
* Select the `AdministratorAccess` policy
  - You may have to search for it
  
![](../artwork/AWS-Create-User-2.png)

---
## Step Two: Review the User

* Press "Next" until you get to the `Review` screen and ensure your user configuration looks like the screenshot
  - If not, go back and make the necessary changes
  - If it matches, press "Create User"

![](../artwork/AWS-Create-User-3.png)

---

## Step Two: Success Screen

* Once the user has been created, you should see screen below
  - Bookmark the URL for AWS Management Console access
  - YoHu don't need to download the .csv file, just click on "Close"
  

![](../artwork/AWS-Create-User-4.png)

---

## Step Two: Login as the Adminstrative User

* Log out as the root user and login with the new Admin account ID
  - Use the URL you bookmarked
  - Your AWS account will show nine digits, the screenshots show my account with an alias I've set up
![](../artwork/AWS-AdminUser-login.png)
---

## Step Two: Create a Developer User

* For classwork, we will create a developer account which will not have full administrative access
  - This follows AWS recommendations for best account management practices
* The first few steps are the same as for creating the AdminUser account
  - Ensure that the user has both console and programmatic access
  - Programmatic access is needed to run terraform code
  - Console access allow visual confirmation of the results of running the Terraform code
* I have called this user "Dev"
  - You can either give `Dev` the same administration permissions as your AdminUser 
  - Or you can give the AWS permissions shown on the next slide
  - You can always change this later
---

## Step Two: Restrictive Permissions for `Dev`

![](../artwork/AWS-Dev-1.png)

---

## Step Two: Download Access Keys

* You will need to download the .csv files since we need the AWS access keys to set up terraform access to AWS
* Alternatively, you can just copy them from the display and store them yourself in a text file
* Logout of the AdminUser account

![](../artwork/AWS-Dev-2.png)
---

## Step Three: Download and Install the AWS CLI

* If you don't already have it installed on your local machine, download the appropriate installer from:
  - [cli-download] (https://https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
  
![](../artwork/AWS-CLI-1.png)

---

## Step Three: Confirm the Installation

* Confirm the installation by using the `AWS --version` command
* If your AWS CLI is installed correctly, then you should see something like this:

![](../artwork/AWS-CLI-2-win.png)

---

## Step Four: Setting up the AWS CLI profile

* This step requires that you have the keys you downloaded in the .csv file
  - If you don't have them, or are using a supplied AWS ID, you will need to create new credentials
  - Creating credentials is covered in the next step
* Using the credentials, set up your profile using the `AWS configure --profile <name>`
  - You can leave the default region and output type set to [NONE]
  
![](../artwork/AWS-CREDS.png)
  
![](../artwork/AWS-Profile-Setup.png)

---

## Step Four: Verify Credentials

* To ensure you set up your profile correctly, run a command to query your IAM profile
  - Use the command `aws iam get-user --user-name <name> --profile <profile-name>`
  - Use the IAM name for the developer account you created for `<name>`
  - Use the profile name you created locally for `<profile-name>`

![](../artwork/AWS-CLI-Verification.png)

---
## Step Five: OH NO! I LOST MY CREDENTIALS

* Your CLI credentials can be replaced at any time
  - This requires console access and IAM permissions
  - You can do this either as the developer user or the admin user
* You should change your credentials if you suspect they are no longer secret

![](../artwork/TheScream.jpg)

---

## Step Five: Find the Credentials

* Login to the console
* Go to the IAM service and select the user whose credentials are to be changed
* Open up the "Security credentials" tab

![](../artwork/AWS-RESET-CREDS-1.png)

---
## Step Five: Invalidate Credentials

* In the access key section, select the "Make inactive" option

![](../artwork/AWS-RESET-CREDS-2.png)

---

## Step Five: Delete the Keys

* Click on the black x to delete the deactivated keys

![](../artwork/AWS-RESET-CREDS-3.png)

---

## Step Five: Generate New Keys

* Click on the "Create access key" button
* Download the *.csv file and go back and use these to set your AWS CLI credentials

![](../artwork/AWS-RESET-CREDS-4.png)

---

## Step Six: Install Terraform

* Go to the terraform download site
  - `https://www.terraform.io/downloads.html`
  - Download the correct binary archive for your local system
  - Extract the archive and place the binary on your local path
  
![](../artwork/TerraformDownloads.png)

---

## Step Six: Test the Installation

* Run the command `terraform version` to ensure terraform is installed correctly

![](../artwork/TerraformVersion.png)

---

## Setup Complete

* You are now able to work with terraform and AWS


---





