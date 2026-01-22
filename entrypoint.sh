#!/bin/bash

# Uncomment down below to select the desired model and command
# huggingface-cli download Qwen/Qwen3-TTS-Tokenizer-12Hz --local-dir ./models/Qwen3-TTS-Tokenizer-12Hz
# huggingface-cli download Qwen/Qwen3-TTS-12Hz-1.7B-CustomVoice --local-dir ./models/Qwen3-TTS-12Hz-1.7B-CustomVoice
# huggingface-cli download Qwen/Qwen3-TTS-12Hz-1.7B-VoiceDesign --local-dir ./models/Qwen3-TTS-12Hz-1.7B-VoiceDesign
huggingface-cli download Qwen/Qwen3-TTS-12Hz-1.7B-Base --local-dir ./models/Qwen3-TTS-12Hz-1.7B-Base
# huggingface-cli download Qwen/Qwen3-TTS-12Hz-0.6B-CustomVoice --local-dir ./models/Qwen3-TTS-12Hz-0.6B-CustomVoice
# huggingface-cli download Qwen/Qwen3-TTS-12Hz-0.6B-Base --local-dir ./models/Qwen3-TTS-12Hz-0.6B-Base

# qwen-tts-demo --help

# CustomVoice model
# qwen-tts-demo ./models/Qwen3-TTS-12Hz-1.7B-CustomVoice --ip 0.0.0.0 --port 8000
# VoiceDesign model
# qwen-tts-demo ./models/Qwen3-TTS-12Hz-1.7B-VoiceDesign --ip 0.0.0.0 --port 8000
# Base model
qwen-tts-demo ./models/Qwen3-TTS-12Hz-1.7B-Base --ip 0.0.0.0 --port 8000
