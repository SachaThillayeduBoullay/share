terraform {
  required_providers {
    netbox = {
      source = "e-breuninger/netbox"
      version = "1.0.2"
    }
  }
}

provider "netbox" {
    server_url           = "http://netbox.local"

    api_token            = "0123456789abcdef0123456789abcdef01234567"

    allow_insecure_https = true
}

resource "netbox_platform" "testplatform" {
    name = "my-test-platform"
}

resource "netbox_cluster_type" "testclustertype" {
    name = "my-test-cluster-type"
}

