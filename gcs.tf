variable "cpath" { }
variable "project" { }
variable "region" { }

provider "google" {
  credentials  = "${file("${var.cpath}")}"
  project      = "${var.project}"
  region       = "${var.region}"
}

resource "google_storage_bucket" "MULTI_REGIONAL" {
  name     = "charan999901"
  storage_class = "MULTI_REGIONAL"
  location = "Asia"
}

resource "google_storage_bucket" "REGIONAL" {
  name     = "charan999902"
  storage_class = "REGIONAL"
  location = "asia-northeast1"
}

resource "google_storage_bucket" "NEARLINE" {
  name     = "charan999903"
  storage_class = "NEARLINE"
  location = "asia-northeast1"
}

resource "google_storage_bucket" "COLDLINE" {
  name     = "charan999904"
  storage_class = "COLDLINE"
  location = "asia-northeast1"
}
