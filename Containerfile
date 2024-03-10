FROM alpine:latest AS builder
WORKDIR /app
COPY data.tx .

FROM fedora AS final
COPY --from+builder /app/data.txt /data.txt
