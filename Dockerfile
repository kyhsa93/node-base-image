FROM ubuntu:16.04

RUN apt-get update && \
    apt-get -y install tzdata && \
    ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime &&\
    apt-get install -y curl nginx && \
    curl -sL https://deb.nodesource.com/setup_9.x | bash && \
    apt-get install -y nodejs build-essential

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
