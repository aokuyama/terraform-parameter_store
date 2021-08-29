variable "region" {
  type    = string
  default = "ap-northeast-1"
}

variable "secrets" {
  type = map(object({
    description = string
    value       = string
    tags        = object({})
  }))
  default = {
    "/test/param" = {
      value       = "testparam."
      description = "The test parameter"
      tags = {
        environment = "test"
      }
    }
  }
}
