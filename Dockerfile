FROM nginx:stable
COPY web /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf