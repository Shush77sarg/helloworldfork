FROM golang:1.16-alpine

WORKDIR /app

COPY . .

RUN go mod download

COPY *.go ./

RUN go build -o /godocker

CMD ["/godocker"]
