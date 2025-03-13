output "dynamodb_table_name" {
  description = "Nome da tabela DynamoDB criada"
  value       = module.backend.dynamodb_table_name
}
