terraform {
required_providers {
openstack = {
source = &quot;terraform-provider-openstack/openstack&quot;
version = &quot;1.40.0&quot;
} }
}
provider &quot;openstack&quot; {
auth_url = &quot;https://auth.cloud.ovh.net/v3/&quot;
alias = &quot;ovh&quot;
region = var.region
