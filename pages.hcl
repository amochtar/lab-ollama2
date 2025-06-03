resource "page" "first" {
  file = "instructions/page.md"

  activities = {
    ollama_is_installed = resource.task.ollama_is_installed
  }
}
