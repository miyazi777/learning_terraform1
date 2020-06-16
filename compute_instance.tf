provider "google" {
	  project = "miyajima-zigan"
	  region  = "asia-northeast1"
}

resource "google_compute_instance" "default" {
	  name         = "miyajima-test-server"
	  machine_type = "f1-micro"
	  zone         = "asia-northeast1-a"

	  boot_disk {
	    initialize_params {
        image = "debian-cloud/debian-9"
	    }
	  }

	  network_interface {
	    network       = "default"
	  }
}
