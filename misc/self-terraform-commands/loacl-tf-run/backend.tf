terraform {
  backend "remote" {
    # hostname = "backend${xxx ? "" : "-STAGE"}.api${ENV0_STAGE !== 'prod' ? '.dev' : ''}.env0.com"
    hostname = "backend-pr10424.api.dev.env0.com"
    #organization = "1ffc3f01-9501-4577-87e7-6ea8e5b4d74b.bac0dd9a-23e7-4d17-a726-4931ef301eac"
    organization = "bb169554-5b78-4311-8aef-0550f9147783.390b2b2c-1a3f-42ff-a057-b817f5304e79"

    workspaces {
      name = "testing-self-tf-commands-1-controlled"
    }
  }

  required_providers {
    env = {
      source  = "tchupp/env"
      version = "0.0.2"
    }
  }
}


provider "env" {
  # Configuration options
}