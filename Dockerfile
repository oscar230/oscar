FROM alpine:3 AS build-stage
WORKDIR /app/
COPY ./ ./
RUN sh build-site.sh

FROM nginx:stable-alpine
COPY --from=build-stage /app/out/* /usr/share/nginx/html
COPY --from=build-stage nginx.conf /etc/nginx/conf.d/default.conf
RUN ls -al ./
CMD ["nginx"]
EXPOSE 80