# output "datasources" {
#   value = var.datasources
# }

output "datasources" {
  value = local.schemas
}