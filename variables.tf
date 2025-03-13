variable "aws_region" {
  description = "Região da AWS"
  type        = string
  default     = "us-east-1"
}

variable "dynamodb_table_name" {
  description = "Nome da tabela DynamoDB para controle de lock"
  type        = string
}

variable "dynamodb_read_capacity" {
  description = "Capacidade de leitura da tabela DynamoDB"
  type        = number
  default     = 2
}

variable "dynamodb_write_capacity" {
  description = "Capacidade de gravação da tabela DynamoDB"
  type        = number
  default     = 2
}
