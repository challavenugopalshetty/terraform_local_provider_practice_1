# providers (specifies the providers configuration, it downloads the providers from terraform registry)

terraform {
  required_providers {
    local = {
        source = "hashicorp/local"
        version = "2.5.2"
    }
  }
}

provider "local" {
    # here comes the configurations
}