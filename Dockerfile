FROM golang as builder
WORKDIR /go/src/github.com/kaspr01/simple-go/
COPY . ./
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix .

FROM alpine:latest
WORKDIR /app/
COPY --from=builder /go/src/github.com/kaspr01/simple-go /app/simple-go
EXPOSE 8090
ENTRYPOINT ./simple-go
