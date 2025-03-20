module "dynamodb" {
  source              = "../"
  dynamodb_table_name = var.dynamodb_table_name
}
