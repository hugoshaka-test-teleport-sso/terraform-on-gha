terraform {
  required_providers {
    teleport = {
      source  = "terraform.releases.teleport.dev/gravitational/teleport"
      version = "~> 16.2"
    }
  }
}

provider "teleport" {
  addr        = "hugoshaka-internal.teleport.sh:443"
  join_method = "github"
  join_token  = "terraform-bot"
}

resource "teleport_role" "test" {
  version = "v7"
  metadata = {
    name        = "test"
    description = "Dummy role to validate Terraform Provider setup"
    labels = {
      test = "yes"
    }
  }

  spec = {}
}
