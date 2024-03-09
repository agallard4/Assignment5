FROM alpine:latest AS builder
RUN apk --no-cache add build-base
COPY data.txt /tmp

FROM fedora AS final
COPY source2.cpp source.cpp
