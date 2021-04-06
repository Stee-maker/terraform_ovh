terraform {
required_providers {
openstack = {
source = "terraform-provider-openstack/openstack"
version = "1.40.0"
	} 

ovh = {	
source = "ovh/ovh"
version = "0.11.0"
	}

} 
 
backend "remote"{
hostname = "app.terraform.io"
organization = "tfe_workshop"

workspaces {
name = "terraform_ovh"
	}
}

 }

provider "openstack" {
auth_url = "https://auth.cloud.ovh.net/v3/"
alias = "ovh"
region = "GRA11"
  }

provider "ovh" {
	endpoint = "ovh.eu"
	}
