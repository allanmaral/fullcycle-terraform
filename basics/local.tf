# resource = bloco
# local = provider
# file = tipo do provider
# exemplo = nome do recurso
resource "local_file" "example" {
  filename = "example.txt"
  content  = var.content
}

data "local_file" "exemple_content" {
  filename = "example.txt"
}

output "data_source_result" {
  value = data.local_file.exemple_content.content
}

variable "content" {
  type    = string
  default = "Hello World"
}

output "file_id" {
  value = resource.local_file.example.id
}
