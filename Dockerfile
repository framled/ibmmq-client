FROM debian:stretch-slim AS builder

WORKDIR /opt/mqm/
RUN apt-get update && apt-get install wget -y && \
    wget -nvc https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/messaging/mqdev/redist/9.1.2.0-IBM-MQC-Redist-LinuxX64.tar.gz -O - | tar -xz -C /opt/mqm/
