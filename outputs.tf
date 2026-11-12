output "organizations_id" {
  description = "Map of id values across all organizations, keyed the same as var.organizations"
  value       = { for k, v in auth0_organization.organizations : k => v.id }
}
output "organizations_branding" {
  description = "Map of branding values across all organizations, keyed the same as var.organizations"
  value       = { for k, v in auth0_organization.organizations : k => one(v.branding) }
}
output "organizations_display_name" {
  description = "Map of display_name values across all organizations, keyed the same as var.organizations"
  value       = { for k, v in auth0_organization.organizations : k => v.display_name }
}
output "organizations_is_app_entitlement_active" {
  description = "Map of is_app_entitlement_active values across all organizations, keyed the same as var.organizations"
  value       = { for k, v in auth0_organization.organizations : k => v.is_app_entitlement_active }
}
output "organizations_metadata" {
  description = "Map of metadata values across all organizations, keyed the same as var.organizations"
  value       = { for k, v in auth0_organization.organizations : k => v.metadata }
}
output "organizations_name" {
  description = "Map of name values across all organizations, keyed the same as var.organizations"
  value       = { for k, v in auth0_organization.organizations : k => v.name }
}
output "organizations_third_party_client_access" {
  description = "Map of third_party_client_access values across all organizations, keyed the same as var.organizations"
  value       = { for k, v in auth0_organization.organizations : k => v.third_party_client_access }
}
output "organizations_token_quota" {
  description = "Map of token_quota values across all organizations, keyed the same as var.organizations"
  value       = { for k, v in auth0_organization.organizations : k => one(v.token_quota) }
}

