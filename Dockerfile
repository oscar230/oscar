FROM alpine:3 AS build-stage-static-pages
WORKDIR /app/
COPY ./ ./
RUN sh build-site.sh

FROM golang:alpine AS build-stage-server
COPY server.go server.go
RUN go build -o server .

FROM scratch
COPY --from=build-stage-static-pages /app/out/index.html index.html
COPY --from=build-stage-server /go/server ./server
CMD ["./server"]
EXPOSE 80