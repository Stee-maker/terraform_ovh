variable "image_name"{
default = "Debian"
type = string
description = "The image of our instances"
}
variable "flavor_name" {
default = "s1-2"
type = string
description = "The flavor of our instances"
}
variable "region"{
default = "GRA7"
type = string
description = "The region where instances will be deployed"
}
variable "mysecret_key" {
type = string
description = "The SSH public key"
}
