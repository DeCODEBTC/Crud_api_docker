FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./

RUN go mod download

COPY *.go ./

RUN go build -o /crud_api_with_go

EXPOSE 8000/

CMD [ "/crud_api_with_go" ]