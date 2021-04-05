terraform {
required_providers {
openstack = {
source = "terraform-provider-openstack/openstack"
version = "1.40.0"
<<<<<<< HEAD
} }
=======
} 
  }
>>>>>>> c2a9d64e9c08733cd9e8501c05d48af51ce44464
}
provider "openstack" {
auth_url = "https://auth.cloud.ovh.net/v3/"
alias = "ovh"
region = var.region
