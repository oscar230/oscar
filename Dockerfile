FROM alpine:3 AS build-stage-static-pages
WORKDIR /app/
COPY ./ ./
RUN sh build-site.sh

FROM golang:latest AS build-stage-server
COPY server.go server.go
RUN go build -ldflags "-linkmode external -extldflags -static" -a server.go

FROM scratch
COPY --from=build-stage-static-pages /app/out/ ./
COPY --from=build-stage-server /go/server ./server
CMD ["./server"]
EXPOSE 80