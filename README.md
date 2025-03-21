# Projeto de Conclusão de Curso do Descomplicando Terraform

## Modulo de DynamoDB (dynamodb)

Este módulo é responsável por criar um DynamoDB.

A documentação do módulo gerada pelo terraform-docs se encontra [aqui](README.TF.md)

## Exemplo de uso

Tem um exemplo completo do uso no diretório exemple caso queira ir logo para a parte prática.

Precisamos da seguinte estrutura de arquivos.

```css
│── main.tf
│── provider.tf
│── variables.tf
│── outputs.tf
```

### provider.tf

```tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

```

### variavles.tf

```tf
variable "aws_region" {
  default = "us-east-1"
}

variable "dynamodb_table_name" {
  default = "terraform-lock"
}

```

Temos aqui 2 variáveis

- Uma para idendificar a região
- Uma com o nome da tabela do DynamoDB

### main.tf

```tf
module "dynamodb" {
  source              = "../"
  aws_region          = var.aws_region
  dynamodb_table_name = var.dynamodb_table_name
}


```

Este main.tf o source está apontando para a pasta raiz, mas se você estiver já utilizando o módulo em outro utilize o código abaixo que está apontando para o repositório git

```tf
module "dynamodb" {
  source   = "github.com/phaelfp/descomplicando-tf-modulo-dynamodb/?ref=v1.0.0"
  aws_region          = var.aws_region
  dynamodb_table_name = var.dynamodb_table_name
}

```

### output.tf

```tf
output "dynamodb_table_name" {
  description = "Nome da tabela DynamoDB criada"
  value       = module.dynamodb.dynamodb_table_name
}

```

### Execução

Tendo as chaves de acesso a AWS configuradas no terminal corretamente é só executar os comando abaixo.

```sh
terraform init
terraform plan -out tfplan
terraform apply "tfplan"
```
