resource "lab" "container_terminal" {
  title       = "Container Terminal"
  description = "This is an example lab with a single container sandbox and a terminal tab."

  settings {
    idle {
      enabled = false
    }
  }

  layout "two_column" {
    default   = true
    reference = resource.layout.two_column

    tab "terminal" {
      title  = "Terminal"
      panel  = "terminal"
      target = resource.terminal.shell
    }

    tab "editor" {
      title  = "Code Editor"
      panel  = "terminal"
      target = resource.editor.code
    }

    tab "docs" {
      title  = "Ollama Library"
      panel  = "terminal"
      target = resource.external_website.ollama_library
    }

    instructions {
      panel = "instructions"
    }
  }

  content {
    chapter "introduction" {
      title = "Introduction to Ollama"

      page "intro" {
        title     = "Intro"
        reference = resource.page.intro
      }

      page "first" {
        title     = "Installing Ollama"
        reference = resource.page.first
      }
    }
  }
}
