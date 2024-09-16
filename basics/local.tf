# resource = bloco
# local = provider
# file = tipo do provider
# exemplo = nome do recurso
resource "local_file" "example" {
  filename = "example.txt"
  content  = var.content
}

variable "content" {
  type    = string
  default = "Hello World"
}

output "file-id" {
  value = resource.local_file.example.id
}
