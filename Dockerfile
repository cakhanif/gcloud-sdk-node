FROM google/cloud-sdk

ENV TZ=Asia/Jakarta
LABEL Maintainer="Mohammad Hanif"
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs npm build-essential
