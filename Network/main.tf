# creating a vpc network

resource "google_compute_network" "sample-vpc" {
  name                    = var.vpc-name
  auto_create_subnetworks = false
}

# creating a subnet for web server

resource "google_compute_subnetwork" "sample-subnet1" {
  name          = var.web-subnet-name
  ip_cidr_range = var.ip-range-for-web
  region        = var.subnet-region-for-web
  network       = google_compute_network.sample-vpc.id
}

# creating a subnet for app server

resource "google_compute_subnetwork" "sample-subnet2" {
  name          = var.app-subnet-name
  ip_cidr_range = var.ip-range-for-app
  region        = var.subnet-region-for-app
  network       = google_compute_network.sample-vpc.id
}

#creating a subnet for db

resource "google_compute_subnetwork" "sample-subnet3" {
  name          = var.db-subnet-name
  ip_cidr_range = var.ip-range-for-db
  region        = var.subnet-region-for-db
  network       = google_compute_network.sample-vpc.id
}

# creating a firewall for web server

resource "google_compute_firewall" "web-firewall" {
  name    = var.web-firewall-name
  network =  google_compute_network.sample-vpc.id
  target_tags   = [var.web-firewall-tag] 
  source_ranges = ["0.0.0.0/0"] 

  allow {
    protocol = "all"
  } 

}

# creating a firewall for app server

resource "google_compute_firewall" "app-firewall" {
  name        = var.app-firewall-name
  network     = google_compute_network.sample-vpc.id
  source_tags = [var.web-firewall-tag]
  target_tags = [var.app-firewall-tag] 

  deny {
    protocol = "all"
  }

}

# creating a firewall for db server

resource "google_compute_firewall" "db-firewall" {
  name        = var.db-firewall-name
  network     = google_compute_network.sample-vpc.id
  source_tags = [var.app-firewall-tag]
  target_tags = [var.db-firewall-tag]  

  deny {
    protocol = "all"
  }

}
  