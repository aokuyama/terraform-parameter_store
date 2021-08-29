terraform {
  required_version = "~> 1.0.0"
  experiments      = [module_variable_optional_attrs]
}

provider "aws" {
  region = var.region
}
