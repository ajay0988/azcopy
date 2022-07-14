FROM ubuntu:20.04
RUN apt update && apt install curl git wget -y
WORKDIR /app
RUN wget https://aka.ms/downloadazcopy-v10-linux && tar -xvf downloadazcopy-v10-linux
COPY /azcopy_linux_amd64_*/azcopy /usr/bin/
