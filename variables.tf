variable "kmip_secret_backends" {
  description = <<EOT
Map of kmip_secret_backends, attributes below
Required:
    - path
Optional:
    - allowed_managed_keys
    - allowed_response_headers
    - audit_non_hmac_request_keys
    - audit_non_hmac_response_keys
    - default_lease_ttl_seconds
    - default_tls_client_key_bits
    - default_tls_client_key_type
    - default_tls_client_ttl
    - delegated_auth_accessors
    - description
    - disable_remount
    - external_entropy_access
    - force_no_cache
    - identity_token_key
    - listen_addrs
    - listing_visibility
    - local
    - max_lease_ttl_seconds
    - namespace
    - options
    - passthrough_request_headers
    - plugin_version
    - seal_wrap
    - server_hostnames
    - server_ips
    - tls_ca_key_bits
    - tls_ca_key_type
    - tls_min_version
EOT

  type = map(object({
    path                         = string
    allowed_managed_keys         = optional(set(string))
    allowed_response_headers     = optional(list(string))
    audit_non_hmac_request_keys  = optional(list(string))
    audit_non_hmac_response_keys = optional(list(string))
    default_lease_ttl_seconds    = optional(number)
    default_tls_client_key_bits  = optional(number)
    default_tls_client_key_type  = optional(string)
    default_tls_client_ttl       = optional(number)
    delegated_auth_accessors     = optional(list(string))
    description                  = optional(string)
    disable_remount              = optional(bool)
    external_entropy_access      = optional(bool)
    force_no_cache               = optional(bool)
    identity_token_key           = optional(string)
    listen_addrs                 = optional(set(string))
    listing_visibility           = optional(string)
    local                        = optional(bool)
    max_lease_ttl_seconds        = optional(number)
    namespace                    = optional(string)
    options                      = optional(map(string))
    passthrough_request_headers  = optional(list(string))
    plugin_version               = optional(string)
    seal_wrap                    = optional(bool)
    server_hostnames             = optional(set(string))
    server_ips                   = optional(set(string))
    tls_ca_key_bits              = optional(number)
    tls_ca_key_type              = optional(string)
    tls_min_version              = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

