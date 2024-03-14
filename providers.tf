terraform {
  required_providers {
    google    = {
      source  = "hashicorp/google"
      version = "5.4.0"
    }
  }
}

provider "google" {
  project     = "amrutha-k"
  credentials = file("key.json")
}


