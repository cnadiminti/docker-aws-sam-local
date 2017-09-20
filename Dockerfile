FROM alpine:3.6

ENV VERSION=0.2.2

RUN apk add --no-cache curl && \
    curl -sSLO https://github.com/awslabs/aws-sam-local/releases/download/v${VERSION}/sam_${VERSION}_linux_386.tar.gz && \
    tar -C /usr/local/bin -zxvf /sam_${VERSION}_linux_386.tar.gz && \
    apk del curl && \
    rm -f /sam_${VERSION}_linux_386.tar.gz

# awscli for "sam package" and "sam deploy"
RUN apk add --no-cache py-pip && pip install awscli

WORKDIR /var/opt

EXPOSE 3000

ENTRYPOINT ["/usr/local/bin/sam"]
