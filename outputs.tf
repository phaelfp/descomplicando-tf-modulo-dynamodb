output "dynamodb_table_name" {
  description = "Nome da tabela DynamoDB criada"
  value       = aws_dynamodb_table.this.name
}
