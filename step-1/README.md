# Step 1 - Create Repositories

Update the [teams.tfvars](teams.tfvars).

Run the command to create repositories and create a single issue for each repository

```shell
terraform init
terraform apply -auto-approve -var-file teams.tfvars  
```

Each student should reply to that issue to get hold of their github handle.

Destroy all repositories afterward:

```shell
terraform destroy -auto-approve -var-file teams.tfvars
```
