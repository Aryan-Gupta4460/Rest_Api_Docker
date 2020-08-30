FROM golang:latest
LABEL maintainer="aryan"

WORKDIR /Dockerexe

COPY go.mod .
COPY go.sum .

RUN go mod download

COPY . .

ENV PORT 8081

RUN go build

CMD ["./Dockerexe"]
