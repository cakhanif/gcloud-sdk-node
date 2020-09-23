FROM google/cloud-sdk

ENV TZ=Asia/Jakarta
LABEL Maintainer="Mohammad Hanif"
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs npm build-essential checkinstall make libreadline-gplv2-dev libncursesw5-dev \
    libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev wget && \
    wget https://www.python.org/ftp/python/3.5.9/Python-3.5.9.tgz && \
    tar xzf Python-3.5.9.tgz && mv Python-* /usr/src && \
    bash Python-3.5.9/configure --enable-optimizations && make install && \
    curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
