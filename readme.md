# Local LLM with RAG

This project is an experimental sandbox for testing out ideas related to running local Large Language Models (LLMs) with [Ollama](https://ollama.ai/) to perform Retrieval-Augmented Generation (RAG) for answering questions based on sample PDFs. In this project, we are also using Ollama to create embeddings with the [nomic-embed-text](https://ollama.com/library/nomic-embed-text) to use with [Chroma](https://docs.trychroma.com/).

## Requirements

- [Ollama](https://ollama.ai/) verson 0.1.26 or higher.

## Setup

1. Clone this repository to your local machine.
2. Create a Python virtual environment by running `python3 -m venv .venv`.
3. Activate the virtual environment by running `source .venv/bin/activate` on Unix or MacOS, or `.\.venv\Scripts\activate` on Windows.
4. Install the required Python packages by running `pip install -r requirements.txt`.

### Running the Project

Creates embeddings for the provided pdf sources: `python3 setup.py -p <pdf_sources>`

Spins an chat using the provided pdfs as sources: `python3 app.py -p <pdf_sources>`


## Dockerized setup

Builds image and generate embeddings: `sudo docker build -t langchain_rag:0.0.3 --build-arg OLLAMA_HOST=http://<ollama_instance>:11434 .`

Starts a jupyter instance on port 5001, the notebook entrypoint allows interacting with the chat: ` sudo docker run --rm -e OLLAMA_HOST=http://<ollama_instance>:11434 --net host -it langchain_rag:0.0.3`


## Technologies Used

- [Langchain](https://github.com/langchain/langchain): A Python library for working with Large Language Model
- [Ollama](https://ollama.ai/): A platform for running Large Language models locally.
- [Chroma](https://docs.trychroma.com/): A vector database for storing and retrieving embeddings.
- [PyPDF](https://pypi.org/project/PyPDF2/): A Python library for reading and manipulating PDF files.
- [Jupyter](https://jupyter.org/): A python based notebook system.
