FROM ubuntu:latest

RUN apt-get update && apt install -y wget git python3 python3-venv ffmpeg libsm6 libxext6

RUN mkdir /home/root \
    && wget -cO webui.sh https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh \
    && chmod +x webui.sh \
    && ./webui.sh -f --skip-torch-cuda-test

CMD ["bash", "webui.sh", "--use-cpu", "all", "--listen"]

