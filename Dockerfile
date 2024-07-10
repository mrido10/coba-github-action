FROM golang:1.19.13-bullseye

LABEL org.opencontainers.image.source=https://github.com/mrido10/coba-github-action

WORKDIR /app

COPY . .
RUN go mod tidy
RUN go build -o app-binary

ENTRYPOINT ["/app/app-binary"]

