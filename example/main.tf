module "backend" {
  source              = "../"
  dynamodb_table_name = var.dynamodb_table_name
}

output "backend_dynamodb" {
  value = module.backend.dynamodb_table_name
}
