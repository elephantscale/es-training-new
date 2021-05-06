# Demos for workspaces

## First Demo - workspace commands

1. Using the same basic two instances from the previous demos
2. Use `apply` to create the AWS instances
3. Use `terraform workspace new dev` to create a new workspace
4. Use `apply` and show the two sets of resources running
5. Switch back to the default workspace `terraform workspace select default`
6. Try to delete the dev workspace and show it is blocked by terraform
7. Switch back to dev and run `destroy`
8. Show the underlying file stucture for the state files
9. Delete the dev workspace and show the state file is also deleted

## Second Demo - using git

1. Create a git repo and add the *tf files and commit
2. Run terraform apply
3. Create a new workspace dev and switch to it
4. Create a git branch called 'dev' `git checkout -b dev`
5. Change the tags from 'Resource' to 'Dev'
6. Run apply and show the two sets of resources
7. Use destroy, switch back to ws default and delete the dev ws
8. Checkout the main branch in git
9. Delete the branch `git branch -D dev`
10. Restore the main.tf files with `git restore main.tf`
11. Show the file is back to its original state
12. Run destroy to clean up