terraform {
  required_providers {
    google    = {
      source  = "hashicorp/google"
      version = "5.4.0"
    }
  }
}

provider "google" {
  project     = "speedy-district-406504"
  credentials = file("key.json")
}

terraform {
  backend "gcs" {
    bucket = "terra-tfstate-store"      #ur bucket name pre-created bucket
    prefix = "terraform/state"
  }
}