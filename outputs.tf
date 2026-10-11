output "cloud_connector_rules_id" {
  description = "Map of id values across all cloud_connector_rules, keyed the same as var.cloud_connector_rules except keys with no id are omitted"
  value       = { for k, v in cloudflare_cloud_connector_rules.cloud_connector_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_connector_rules_rules" {
  description = "Map of rules values across all cloud_connector_rules, keyed the same as var.cloud_connector_rules except keys with no rules are omitted"
  value       = { for k, v in cloudflare_cloud_connector_rules.cloud_connector_rules : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "cloud_connector_rules_zone_id" {
  description = "Map of zone_id values across all cloud_connector_rules, keyed the same as var.cloud_connector_rules except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_cloud_connector_rules.cloud_connector_rules : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

