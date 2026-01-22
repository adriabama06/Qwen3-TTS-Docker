# Qwen3-TTS Docker Setup

This repository provides a Dockerized environment for running **Qwen3-TTS**, a powerful text-to-speech model from Alibaba Qwen team.

## Prerequisites

- **Docker** and **Docker Compose** installed.
- **NVIDIA Container Toolkit** installed (for GPU acceleration).

## Getting Started

Follow these steps to choose a model and start the service:

### 1. Model Selection

Before starting the container, you can choose which Qwen3-TTS model variant to use.

1. Open the `entrypoint.sh` file.
2. Under the `# Uncomment down below to select the desired model and command` section, uncomment the `huggingface-cli download` line for your preferred model.
3. Scroll down and uncomment the corresponding `qwen-tts-demo` command.
4. Ensure other models and commands are commented out.

By default, the **Qwen3-TTS-12Hz-1.7B-Base** model is selected.

### 2. Run with Docker Compose

To build (if necessary) and start the container in the background, run:

```bash
docker compose up -d
```

### 3. Monitor Logs

To check the progress of the model download and see when the server is ready, follow the logs:

```bash
docker compose logs -f
```

Once the server is up, it will be accessible at `http://localhost:8000`.

## Available Models

The following models are currently supported in the `entrypoint.sh`:
- Qwen3-TTS-12Hz-1.7B-Base (Default)
- Qwen3-TTS-12Hz-1.7B-CustomVoice
- Qwen3-TTS-12Hz-1.7B-VoiceDesign
- Qwen3-TTS-12Hz-0.6B-CustomVoice
- Qwen3-TTS-12Hz-0.6B-Base
