data "databricks_mason_session_stores" "mason_session_stores_lookup" {
  for_each = var.mason_session_stores_lookup

  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

