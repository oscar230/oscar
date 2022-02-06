FROM alpine:3 AS build-env
WORKDIR /app
COPY build-site.sh ./
COPY build-page.sh ./
COPY src/ ./
RUN sh build-site.sh


FROM nginx:stable
WORKDIR /app
COPY --from=build-env /app/out/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80