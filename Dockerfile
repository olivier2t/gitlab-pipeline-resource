FROM alpine:3.16
RUN apk --no-cache add openssh-client bash jq curl

# Install Concourse Resource Scripts
RUN mkdir -p /opt/resource
COPY bin /opt/resource
RUN chmod -R a+x /opt/resource
WORKDIR /opt/resource