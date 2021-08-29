variable "region" {
  type    = string
  default = "ap-northeast-1"
}

variable "secrets" {
  type = map(object({
    value       = string
    description = optional(string)
    tags        = optional(object({}))
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
