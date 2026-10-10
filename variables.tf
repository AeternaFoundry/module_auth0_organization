variable "organizations" {
  description = <<EOT
Map of organizations, attributes below
Required:
    - name
Optional:
    - display_name
    - is_app_entitlement_active
    - metadata
    - third_party_client_access
    - branding (block):
        - colors (optional)
        - logo_url (optional)
    - token_quota (block):
        - client_credentials (required, block):
            - enforce (optional)
            - per_day (optional)
            - per_hour (optional)
EOT

  type = map(object({
    name                      = string
    display_name              = optional(string)
    is_app_entitlement_active = optional(bool)
    metadata                  = optional(map(string))
    third_party_client_access = optional(string)
    branding = optional(object({
      colors   = optional(map(string))
      logo_url = optional(string)
    }))
    token_quota = optional(object({
      client_credentials = object({
        enforce  = optional(bool)
        per_day  = optional(number)
        per_hour = optional(number)
      })
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.organizations : (
        v.third_party_client_access == null || (contains(["allow", "block"], v.third_party_client_access))
      )
    ])
    error_message = "must be one of: \"allow\", \"block\""
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

