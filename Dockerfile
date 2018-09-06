FROM alpine:3.8
RUN apt-get update \
 && apt-get install -y python-dev \
 && cd /tmp \
 && curl -O https://bootstrap.pypa.io/get-pip.py \
 && python get-pip.py \
 && pip install awsebcli --upgrade \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
