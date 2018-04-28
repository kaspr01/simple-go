FROM golang
WORKDIR /go/src/github.com/habibridho/simple-go
ADD . ./
RUN ./build.sh

FROM alpine:3.5
WORKDIR /app
COPY --from=0 /go/src/github.com/habibridho/simple-go/simple-go .
EXPOSE 8888
ENTRYPOINT ./simple-go