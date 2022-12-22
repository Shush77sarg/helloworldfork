FROM golang

WORKDIR /app

COPY . .

go env -w GO111MODULE=on

RUN go mod download

RUN go build -o /godocker

CMD ["/godocker"]
