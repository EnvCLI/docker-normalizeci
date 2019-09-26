############################################################
# Dockerfile
############################################################

# Set the base image
FROM alpine:latest

############################################################
# Installation
############################################################

RUN apk add --no-cache bash curl &&\
    curl -L -s -o /usr/local/bin/normalizeci https://dl.bintray.com/envcli/golang/normalize-ci/v0.1.1/linux_amd64 &&\
    chmod +x /usr/local/bin/normalizeci

############################################################
# Execution
############################################################
CMD ["normalizeci"]
