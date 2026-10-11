variable "cloud_connector_rules" {
  description = <<EOT
Map of cloud_connector_rules, attributes below
Required:
    - zone_id
Optional:
    - rules
EOT

  type = map(object({
    zone_id = string
    rules = optional(list(object({
      cloud_connector_rules_provider = optional(string)
      description                    = optional(string)
      enabled                        = optional(bool)
      expression                     = optional(string)
      parameters = optional(object({
        host = optional(string)
      }))
    })))
  }))
}

