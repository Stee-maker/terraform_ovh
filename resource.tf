resource "openstack_compute_keypair_v2" "mysecret_keypub" {
provider = openstack.ovh
name = "mysecret_key"
public_key = var.mysecret_keypub
}
resource "openstack_compute_instance_v2" "terraform_instance_demo" {
provider = openstack.ovh
count = var.server_number
name = "terraform_instance_demo"
image_name = var.image_name
flavor_name = var.flavor_name
key_pair = openstack_compute_keypair_v2.mysecret_key.name
network {
name = "Ext-Net"
}
}
