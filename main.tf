resource "cloudflare_cloud_connector_rules" "cloud_connector_rules" {
  for_each = var.cloud_connector_rules

  zone_id = each.value.zone_id
  rules   = each.value.rules
}

