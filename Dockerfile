FROM debian:stretch
COPY fpco.gpg /etc/apt/trusted.gpg.d/fpco.gpg
COPY fpco.list /etc/apt/sources.list.d/fpco.list
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -qy stack git
RUN stack setup
