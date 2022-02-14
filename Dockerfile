FROM alpine:3 AS build-stage
WORKDIR /app/
COPY ./ ./
RUN sh build-site.sh

FROM httpd:2-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build-stage /app/out/ /usr/share/nginx/html/
RUN ls -la /usr/share/nginx/html/