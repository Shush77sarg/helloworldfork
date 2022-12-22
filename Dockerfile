FROM golang:1.16-alpine

WORKDIR /app

COPY . .

# Download necessary Go modules

COPY go.mod ./
COPY go.sum ./

RUN go mod download

COPY *.go ./

RUN go build -o /godocker

CMD ["/godocker"]
