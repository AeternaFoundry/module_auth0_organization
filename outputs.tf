output "organizations_id" {
  description = "Map of id values across all organizations, keyed the same as var.organizations except keys with no id are omitted"
  value       = { for k, v in auth0_organization.organizations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organizations_branding" {
  description = "Map of branding values across all organizations, keyed the same as var.organizations except keys with no branding are omitted"
  value       = { for k, v in auth0_organization.organizations : k => one(v.branding) if v.branding != null && length(v.branding) > 0 }
}
output "organizations_display_name" {
  description = "Map of display_name values across all organizations, keyed the same as var.organizations except keys with no display_name are omitted"
  value       = { for k, v in auth0_organization.organizations : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "organizations_is_app_entitlement_active" {
  description = "Map of is_app_entitlement_active values across all organizations, keyed the same as var.organizations except keys with no is_app_entitlement_active are omitted"
  value       = { for k, v in auth0_organization.organizations : k => v.is_app_entitlement_active if v.is_app_entitlement_active != null }
}
output "organizations_metadata" {
  description = "Map of metadata values across all organizations, keyed the same as var.organizations except keys with no metadata are omitted"
  value       = { for k, v in auth0_organization.organizations : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "organizations_name" {
  description = "Map of name values across all organizations, keyed the same as var.organizations except keys with no name are omitted"
  value       = { for k, v in auth0_organization.organizations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "organizations_third_party_client_access" {
  description = "Map of third_party_client_access values across all organizations, keyed the same as var.organizations except keys with no third_party_client_access are omitted"
  value       = { for k, v in auth0_organization.organizations : k => v.third_party_client_access if v.third_party_client_access != null && length(v.third_party_client_access) > 0 }
}
output "organizations_token_quota" {
  description = "Map of token_quota values across all organizations, keyed the same as var.organizations except keys with no token_quota are omitted"
  value       = { for k, v in auth0_organization.organizations : k => one(v.token_quota) if v.token_quota != null && length(v.token_quota) > 0 }
}

