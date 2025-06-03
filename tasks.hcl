resource "task" "ollama_is_installed" {
  config {
    target = resource.container.ubuntu

    parallel_exec {
      condition = true
    }
  }

  success_message = "Ollama is installed and the Gemma:2b LLM is available."

  condition "binary_exists" {
    description = "The ollama binary exists"

    config {
      target = resource.container.ubuntu
    }

    check {
      script          = "scripts/ollama_is_installed/binary_exists.sh"
      failure_message = "Ollama is not installed."
    }
  }

  condition "model_downloaded" {
    description = "The Gemma:2b LLM is available."

    check {
      script          = "scripts/ollama_is_installed/model_downloaded.sh"
      failure_message = "Gemma:2b LLM is not available."
    }
  }
}