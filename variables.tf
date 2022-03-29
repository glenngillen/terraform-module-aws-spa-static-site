variable "domain" {
    type = string
}
variable "domain_aliases" {
    type = list(string)
}
variable "certificate_arn" {
    type = string
}

variable "logging_enabled" {
    type = boolean
    value = false
}

variable "logging_config" {
    type = object({
      include_cookies = boolean
      bucket          = string
      prefix          = string
    })
    value = null
}