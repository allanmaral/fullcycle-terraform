# resource = bloco
# local = provider
# file = tipo do provider
# exemplo = nome do recurso
resource "local_file" "exemplo" {
  filename = "example.txt"
  content  = var.content
}

variable "content" {
  type    = string
  default = "Hello World"
}
