variable "os_management_hub_managed_instance_errata_lookup" {
  description = <<EOT
Map of os_management_hub_managed_instance_errata_lookup, attributes below
Required:
    - managed_instance_id
Optional:
    - classification_type
    - compartment_id
    - name
    - name_contains
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    managed_instance_id = string
    classification_type = optional(list(string))
    compartment_id      = optional(string)
    name                = optional(list(string))
    name_contains       = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

