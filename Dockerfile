FROM python:3.10-bullseye

RUN apt update && apt install -y gcc g++ build-essential binutils patchelf apt-transport-https curl wget gnupg git watch unzip vim

WORKDIR /app
COPY . .
RUN pip install -r requirements.txt