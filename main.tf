resource "auth0_organization" "organizations" {
  for_each = var.organizations

  name                      = each.value.name
  display_name              = each.value.display_name
  is_app_entitlement_active = each.value.is_app_entitlement_active
  metadata                  = each.value.metadata
  third_party_client_access = each.value.third_party_client_access

  dynamic "branding" {
    for_each = each.value.branding != null ? [each.value.branding] : []
    content {
      colors   = branding.value.colors
      logo_url = branding.value.logo_url
    }
  }

  dynamic "token_quota" {
    for_each = each.value.token_quota != null ? [each.value.token_quota] : []
    content {
      client_credentials {
        enforce  = token_quota.value.client_credentials.enforce
        per_day  = token_quota.value.client_credentials.per_day
        per_hour = token_quota.value.client_credentials.per_hour
      }
    }
  }
}

