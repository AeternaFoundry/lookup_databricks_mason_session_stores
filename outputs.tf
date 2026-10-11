output "mason_session_stores_lookup_page_size" {
  description = "Map of page_size values across all mason_session_stores_lookup, keyed the same as var.mason_session_stores_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_mason_session_stores.mason_session_stores_lookup : k => v.page_size if v.page_size != null }
}
output "mason_session_stores_lookup_provider_config" {
  description = "Map of provider_config values across all mason_session_stores_lookup, keyed the same as var.mason_session_stores_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_mason_session_stores.mason_session_stores_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "mason_session_stores_lookup_session_stores" {
  description = "Map of session_stores values across all mason_session_stores_lookup, keyed the same as var.mason_session_stores_lookup except keys with no session_stores are omitted"
  value       = { for k, v in data.databricks_mason_session_stores.mason_session_stores_lookup : k => v.session_stores if v.session_stores != null && length(v.session_stores) > 0 }
}

