FROM alpine:3 AS build-env
WORKDIR /app/
COPY build-site.sh ./
COPY build-page.sh ./
COPY ./ ./
RUN ls -al ./
RUN sh build-site.sh

FROM nginx:stable-alpine
# WORKDIR /usr/share/nginx/html/
# RUN rm -rf ./*
RUN ls -al ./
COPY --from=build-env /app/out/* ./
COPY nginx.conf /etc/nginx/conf.d/
CMD ["nginx"]
EXPOSE 80