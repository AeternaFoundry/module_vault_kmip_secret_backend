resource "vault_kmip_secret_backend" "kmip_secret_backends" {
  for_each = var.kmip_secret_backends

  path                         = each.value.path
  allowed_managed_keys         = each.value.allowed_managed_keys
  allowed_response_headers     = each.value.allowed_response_headers
  audit_non_hmac_request_keys  = each.value.audit_non_hmac_request_keys
  audit_non_hmac_response_keys = each.value.audit_non_hmac_response_keys
  default_lease_ttl_seconds    = each.value.default_lease_ttl_seconds
  default_tls_client_key_bits  = each.value.default_tls_client_key_bits
  default_tls_client_key_type  = each.value.default_tls_client_key_type
  default_tls_client_ttl       = each.value.default_tls_client_ttl
  delegated_auth_accessors     = each.value.delegated_auth_accessors
  description                  = each.value.description
  disable_remount              = each.value.disable_remount
  external_entropy_access      = each.value.external_entropy_access
  force_no_cache               = each.value.force_no_cache
  identity_token_key           = each.value.identity_token_key
  listen_addrs                 = each.value.listen_addrs
  listing_visibility           = each.value.listing_visibility
  local                        = each.value.local
  max_lease_ttl_seconds        = each.value.max_lease_ttl_seconds
  namespace                    = each.value.namespace
  options                      = each.value.options
  passthrough_request_headers  = each.value.passthrough_request_headers
  plugin_version               = each.value.plugin_version
  seal_wrap                    = each.value.seal_wrap
  server_hostnames             = each.value.server_hostnames
  server_ips                   = each.value.server_ips
  tls_ca_key_bits              = each.value.tls_ca_key_bits
  tls_ca_key_type              = each.value.tls_ca_key_type
  tls_min_version              = each.value.tls_min_version
}

