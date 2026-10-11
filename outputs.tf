output "quicksight_themes_id" {
  description = "Map of id values across all quicksight_themes, keyed the same as var.quicksight_themes"
  value       = { for k, v in aws_quicksight_theme.quicksight_themes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "quicksight_themes_arn" {
  description = "Map of arn values across all quicksight_themes, keyed the same as var.quicksight_themes"
  value       = { for k, v in aws_quicksight_theme.quicksight_themes : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "quicksight_themes_aws_account_id" {
  description = "Map of aws_account_id values across all quicksight_themes, keyed the same as var.quicksight_themes"
  value       = { for k, v in aws_quicksight_theme.quicksight_themes : k => v.aws_account_id if v.aws_account_id != null && length(v.aws_account_id) > 0 }
}
output "quicksight_themes_base_theme_id" {
  description = "Map of base_theme_id values across all quicksight_themes, keyed the same as var.quicksight_themes"
  value       = { for k, v in aws_quicksight_theme.quicksight_themes : k => v.base_theme_id if v.base_theme_id != null && length(v.base_theme_id) > 0 }
}
output "quicksight_themes_configuration" {
  description = "Map of configuration values across all quicksight_themes, keyed the same as var.quicksight_themes"
  value       = { for k, v in aws_quicksight_theme.quicksight_themes : k => one(v.configuration) if v.configuration != null && length(v.configuration) > 0 }
}
output "quicksight_themes_created_time" {
  description = "Map of created_time values across all quicksight_themes, keyed the same as var.quicksight_themes"
  value       = { for k, v in aws_quicksight_theme.quicksight_themes : k => v.created_time if v.created_time != null && length(v.created_time) > 0 }
}
output "quicksight_themes_last_updated_time" {
  description = "Map of last_updated_time values across all quicksight_themes, keyed the same as var.quicksight_themes"
  value       = { for k, v in aws_quicksight_theme.quicksight_themes : k => v.last_updated_time if v.last_updated_time != null && length(v.last_updated_time) > 0 }
}
output "quicksight_themes_name" {
  description = "Map of name values across all quicksight_themes, keyed the same as var.quicksight_themes"
  value       = { for k, v in aws_quicksight_theme.quicksight_themes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "quicksight_themes_permissions" {
  description = "Map of permissions values across all quicksight_themes, keyed the same as var.quicksight_themes"
  value       = { for k, v in aws_quicksight_theme.quicksight_themes : k => v.permissions if v.permissions != null && length(v.permissions) > 0 }
}
output "quicksight_themes_region" {
  description = "Map of region values across all quicksight_themes, keyed the same as var.quicksight_themes"
  value       = { for k, v in aws_quicksight_theme.quicksight_themes : k => v.region if v.region != null && length(v.region) > 0 }
}
output "quicksight_themes_status" {
  description = "Map of status values across all quicksight_themes, keyed the same as var.quicksight_themes"
  value       = { for k, v in aws_quicksight_theme.quicksight_themes : k => v.status if v.status != null && length(v.status) > 0 }
}
output "quicksight_themes_tags" {
  description = "Map of tags values across all quicksight_themes, keyed the same as var.quicksight_themes"
  value       = { for k, v in aws_quicksight_theme.quicksight_themes : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "quicksight_themes_tags_all" {
  description = "Map of tags_all values across all quicksight_themes, keyed the same as var.quicksight_themes"
  value       = { for k, v in aws_quicksight_theme.quicksight_themes : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "quicksight_themes_theme_id" {
  description = "Map of theme_id values across all quicksight_themes, keyed the same as var.quicksight_themes"
  value       = { for k, v in aws_quicksight_theme.quicksight_themes : k => v.theme_id if v.theme_id != null && length(v.theme_id) > 0 }
}
output "quicksight_themes_version_description" {
  description = "Map of version_description values across all quicksight_themes, keyed the same as var.quicksight_themes"
  value       = { for k, v in aws_quicksight_theme.quicksight_themes : k => v.version_description if v.version_description != null && length(v.version_description) > 0 }
}
output "quicksight_themes_version_number" {
  description = "Map of version_number values across all quicksight_themes, keyed the same as var.quicksight_themes"
  value       = { for k, v in aws_quicksight_theme.quicksight_themes : k => v.version_number if v.version_number != null }
}

