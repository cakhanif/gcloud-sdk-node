FROM google/cloud-sdk

ENV TZ=Asia/Jakarta
LABEL Maintainer="Mohammad Hanif"
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs npm build-essential && \
    curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
