FROM alpine:3 AS build-stage
WORKDIR /app/
COPY ./ ./
RUN sh build-site.sh

FROM busybox:stable
COPY --from=build-stage /app/out/ /var/www/
CMD ["httpd", "-f", "-h", "/var/www/", "-p", "80"]
EXPOSE 80