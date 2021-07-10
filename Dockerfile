# Container base: python 3.6 Alpine Linux
FROM python:3.6-alpine

ENV PYTHONUNBUFFERED 1

# Criar diretório onde vão ficar as fontes
RUN mkdir /code

# Definir o diretório de trabalho
WORKDIR /code

# "Copiar" arquivo requiremnets.txt para diretorio code
ADD requirements.txt /code/

# Executa o pip
RUN pip install -r requirements.txt

# "Copiar" os arquivos locais para o diretório code no container
ADD . /code/
