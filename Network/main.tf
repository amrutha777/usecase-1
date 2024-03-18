/*************
  vpc network
**************/

resource "google_compute_network" "sample-vpc" {
  name                    = var.vpc-name
  auto_create_subnetworks = false
}

/*************
  web subnet
*************/

resource "google_compute_subnetwork" "sample-subnet1" {
  name          = var.web-subnet-name
  ip_cidr_range = var.ip-range-for-web
  region        = var.subnet-region-for-web
  network       = google_compute_network.sample-vpc.name
}

/*************
  app subnet
*************/

resource "google_compute_subnetwork" "sample-subnet2" {
  name          = var.app-subnet-name
  ip_cidr_range = var.ip-range-for-app
  region        = var.subnet-region-for-app
  network       = google_compute_network.sample-vpc.name
}

/*************
  db subnet
*************/

resource "google_compute_subnetwork" "sample-subnet3" {
  name          = var.db-subnet-name
  ip_cidr_range = var.ip-range-for-db
  region        = var.subnet-region-for-db
  network       = google_compute_network.sample-vpc.name
}

/********************
   3-Tier Firewall
*********************/

resource "google_compute_firewall" "allow-all-firewall" {
  name    = var.allow-all-firewall-name
  network = google_compute_network.sample-vpc.name

  allow {
    protocol = "all"
  }

  source_ranges = ["0.0.0.0/0"]
}
