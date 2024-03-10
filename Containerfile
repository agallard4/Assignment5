FROM alpine:latest AS builder
WORKDIR /app
COPY data.txt .

FROM fedora AS final
COPY --from=builder /app/data.txt /data.txt
