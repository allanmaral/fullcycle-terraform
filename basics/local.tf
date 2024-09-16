# resource = bloco
# local = provider
# file = tipo do provider
# exemplo = nome do recurso
resource "local_file" "exemplo" {
  content  = "sample content here"
  filename = "example.txt"
}
