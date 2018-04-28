FROM golang
WORKDIR /go/src/github.com/habibridho/simple-go
ADD . ./
RUN ./build.sh
EXPOSE 8888
ENTRYPOINT ./simple-go