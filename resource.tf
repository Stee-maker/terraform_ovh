resource "openstack_compute_keypair_v2" "gistools_keypair" {
provider = openstack.ovh
name = "gistools-pubkey"
public_key = var.gistools_keypair
}
resource "openstack_compute_instance_v2" "terraform_instance_demo" {
provider = openstack.ovh
count = 1
name = "terraform_instance_demo"
image_name = var.image_name
flavor_name = var.flavor_name
key_pair = openstack_compute_keypair_v2.gistools_keypair.name
network {
name = "Ext-Net"
}
}
