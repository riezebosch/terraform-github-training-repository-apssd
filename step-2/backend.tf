data "terraform_remote_state" "step-1" {
  backend = "local"

  config = {
    path = "../step-1/terraform.tfstate"
  }
}
