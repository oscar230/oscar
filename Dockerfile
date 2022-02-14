FROM alpine:3 AS build-stage
WORKDIR /app/
COPY ./ ./
RUN sh build-site.sh

FROM httpd:alpine
COPY --from=build-stage /app/out/ /var/www/html/
RUN ls -la /var/www/html/
EXPOSE 80