terraform {
required_providers {
openstack = {
source = "terraform-provider-openstack/openstack"
version = "1.40.0"
} 
  }
}
provider "openstack" {
auth_url = "https://auth.cloud.ovh.net/v3/"
alias = "ovh"
region = var.region
