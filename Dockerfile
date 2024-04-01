FROM ubuntu:22.04

WORKDIR /root
RUN apt-get update && apt-get install -y python3 python3-venv git python3-pip

ADD .  sources

WORKDIR /root/sources
RUN pip3 install -r requirements.txt

ARG OLLAMA_HOST=http://localhost:11434
RUN python3 setup.py -m gemma -p pdf_sources/


ENTRYPOINT ["bash", "entrypoint.sh"]
