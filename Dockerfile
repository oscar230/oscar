FROM nginx:stable
RUN sh build-site.sh
COPY out /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf