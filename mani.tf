resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  project      = "cft-seed-50a5"
 
  tags = ["foo", "bar"]
 
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
 
  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }
 
  network_interface {
    network = "default"
 
    access_config {
      // Ephemeral IP
    }
  }
 
  metadata = {
    foo = "bar"
  }
 
}
 
resource "google_storage_bucket" "auto-expire" {
  name          = "auto-expiring-bucket"
  location      = "US"
  force_destroy = true
  project = "cft-seed-50a5"
  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}
