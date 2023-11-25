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

/***************
  web firewall
***************/

resource "google_compute_firewall" "web-firewall" {
  name          = var.web-firewall-name
  network       =  google_compute_network.sample-vpc.name
  target_tags   = [var.web-tag] 
  source_ranges = ["0.0.0.0/0"] 
  allow {
    protocol    = "tcp"
    ports       = ["22","80"]
  }
  allow {
    protocol    = "icmp"
  }
}

/***************
  app firewall
***************/

resource "google_compute_firewall" "app-firewall" {
  name        = var.app-firewall-name
  network     = google_compute_network.sample-vpc.name
  source_tags = [var.web-tag]
  target_tags = [var.app-tag] 
  allow {
  protocol    = "tcp" 
  ports       = ["22","80"]
  } 
  allow {
    protocol  = "icmp"
  }
}

/***************
  db firewall
***************/

resource "google_compute_firewall" "db-firewall" {
  name        = var.db-firewall-name
  network     = google_compute_network.sample-vpc.name
  source_tags = [var.app-tag]
  target_tags = [var.db-tag]  
  allow {
  protocol    = "tcp" 
  ports       = ["22","80","3306"]
  } 
  allow {
    protocol  = "icmp"
  }
}

/***************
  SSH firewall
***************/ 

resource "google_compute_firewall" "ssh-firewall" {
  name          = var.ssh-firewall-name
  network       = google_compute_network.sample-vpc.name
  source_ranges = ["35.235.240.0/20"]
  target_tags   = [var.app-tag,var.db-tag]
  allow {
  protocol      = "tcp" 
  ports         = ["22"]
 }
}

/***********************
  health check firewall
************************/

resource "google_compute_firewall" "hc-firewall" {
  name          = var.hc-firewall-name
  network       = google_compute_network.sample-vpc.name
  source_ranges = ["35.191.0.0/16","130.211.0.0/22"]
  target_tags   = [var.app-tag]
  allow {
  protocol      = "tcp" 
  ports         = ["80"]
 }
}