
resource "openstack_compute_instance_v2" "terraform_instance_demo" {
provider = openstack.ovh
count = var.server_number
name = "terraform_instance_demo"
image_id = "fea018c5-c7de-4cb1-92a6-218bcdc47a95"
flavor_id = "fa05492b-f252-4287-bf26-8bfa62933c6a"
region = "GRA11"
network {
name = "Ext-Net"
}
}
