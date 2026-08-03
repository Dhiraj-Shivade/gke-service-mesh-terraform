terraform {

  backend "gcs" {

    bucket = "uma-enhub-state-file-holder"

    prefix = "terraform/prod"

  }

}