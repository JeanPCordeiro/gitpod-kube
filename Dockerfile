FROM gitpod/workspace-full:latest

USER root

RUN curl -LO https://dl.k8s.io/release/v1.23.0/bin/linux/amd64/kubectl && \
    install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl && \
    rm kubectl
    
RUN brew install helm

RUN apt update && \
    apt-get install gettext-base -y

RUN pip3 install python-dateutil ansible openshift kubernetes

RUN ansible-galaxy collection install kubernetes.core
