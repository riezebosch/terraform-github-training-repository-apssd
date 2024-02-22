# Setup training repositories for [APS-SD](https://www.scrum.org/courses/applying-professional-scrum-training)

See [riezebosch/training-repository/github](https://registry.terraform.io/modules/riezebosch/training-repository/github/) for additional information.

## Step 1: setup configuration

```terraform
module "team" {
  source  = "riezebosch/training-repository-apssd/github"
  version = "0.0.2"
  teams = [{
    name  = "amazing-einstein"
    stack = "python"
    }, {
    name  = "gloomy-perlman"
    stack = "nodejs"
    }, {
    name  = "mad-swirles"
    stack = "nodejs"
    }, {
    name  = "elated-euler"
    stack = "php"
    }
  ]
}
```

## Step 2: create repositories

```shell
terraform init
terraform apply -auto-approve
```

## Step 3: add collaborators

Students comment on the issue that is created in their respective repository.

```shell
terraform apply -auto-approve
```

## Step 4: destroy resources

```shell
terraform destroy -auto-approve
```
