output "dynamodb_table_name" {
  description = "Nome da tabela DynamoDB criada"
  value       = module.dynamodb.dynamodb_table_name
}
