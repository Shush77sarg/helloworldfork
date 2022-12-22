FROM golang

WORKDIR /app

COPY . .

# Download necessary Go modules

COPY go.mod ./
COPY go.sum ./

RUN go mod download

RUN go build -o /godocker

CMD ["/godocker"]
