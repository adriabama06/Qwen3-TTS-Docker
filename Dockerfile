ARG ANACONDA_PYTHON_VERSION=3.12

FROM pytorch/pytorch:2.7.1-cuda12.6-cudnn9-devel

RUN apt-get update -y && apt-get install -y dos2unix git sox libsox-fmt-all && apt-get clean

WORKDIR /Qwen3-TTS

RUN git clone https://github.com/QwenLM/Qwen3-TTS.git . && git reset --hard d5c446171afda5598819533933c3ae99802ab655
RUN pip install -U "huggingface_hub[cli]" && pip install -e . && pip install -U flash-attn --no-build-isolation

COPY ./entrypoint.sh ./entrypoint.sh

RUN dos2unix ./entrypoint.sh

RUN chmod +x ./entrypoint.sh

ENTRYPOINT [ "bash", "-c" ]
CMD [ "/Qwen3-TTS/entrypoint.sh" ]
