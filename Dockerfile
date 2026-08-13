FROM golang:1.26

WORKDIR /docker11finalapp

COPY go.mod go.sum ./
RUN go mod download && go mod verify
COPY . ./
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /go1fldocker11_app

CMD ["/go1fldocker11_app"]