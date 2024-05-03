# syntax=docker/dockerfile:1

FROM ubuntu:22.04
ARG TAGS
WORKDIR /usr/local/bin
ARG DEBIAN_FRONTEND=noninteractive
RUN <<EOT
    apt update
    apt install -y software-properties-common
    add-apt-repository --yes --update ppa:ansible/ansible
    apt install -y ansible
    add-apt-repository -y ppa:git-core/ppa
    apt update 
    apt install -y curl git build-essential
EOT
