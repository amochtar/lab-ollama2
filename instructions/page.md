Ollama is a user-friendly interface for running large language models (LLMs) locally, specifically on MacOS and Linux, with Windows support on the horizon. It is a valuable tool for researchers, developers, and anyone who wants to experiment with language models.

> [!IMPORTANT]
> Think of an LLM like the "brain" behind ChatGPT or other chatbots.
> During this lab you will use the Gemma LLM but Ollama supports hundreds of different LLMs that support a variety of use cases.

# Install Ollama

Install Ollama via the [button label="💻 Terminal"](tab-0) with the following command:

```bash,nocopy
curl -fsSL https://ollama.com/install.sh | sh
```

# Review Supported LLMs

Next, you can visit the model library at [button label="📖 Ollama LLM Library"](tab-2) to check the list of all model families currently supported. The default model downloaded is the one with the latest tag. On the page for each model, you can get more info such as the size and quantization used.

You can search through the list of tags to locate the model that you want to run. For each model family, there are typically foundational models of different sizes and instruction-tuned variants. In this lab you will use the Gemma 2B model from the Gemma family of lightweight models from Google DeepMind.

You can run the model using the ollama run command to pull and start interacting with the model directly. However, you can also pull the model onto your machine first and then run it. This is very similar to how you work with Docker images.

# Get the Gemma 2B LLM

Get the Gemma 2B LLM to complete the remainder of the lab. Running the following pull command in the [button label="💻 Terminal"](tab-0) will download it locally.

```bash,run
ollama pull gemma:2b
```

<instruqt-task id="ollama_is_installed"></instruqt-task>

\*\* **Congratulations, you just installed your first LLM! Next, we will use this model to answer some questions.** \*\*

<instruqt-completion
  heading="Congratualtions!"
  finish-button-label="Take me home">
</instruqt-completion>
