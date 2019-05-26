# use a node base image edit
FROM node:7-onbuild

# set maintainer
LABEL maintainer "vickyseth9933@gmail.com"

# set a health check
HEALTHCHECK --interval=10s \
            --timeout=10s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000