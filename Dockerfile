# final stage
FROM centurylink/ca-certs
COPY --from=build-env /go/go /
ENTRYPOINT ["/go"]
[root@IP70 web]# more Dockerfile
# build stage
FROM golang:alpine AS build-env
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh
COPY /web.go .
RUN go get github.com/ajstarks/svgo
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build .

# final stage
FROM centurylink/ca-certs
COPY --from=build-env /go/go /
ENTRYPOINT ["/go"]
EXPOSE 9090
