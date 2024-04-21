FROM python:3-bookworm AS prepare
WORKDIR /app/
COPY ./src/ ./
RUN pip install pillow optimize-images css-html-js-minify exif_delete
RUN optimize-images ./
RUN css-html-js-minify ./
RUN exif_delete --replace ./**/*.jpg
RUN exif_delete --replace ./**/*.JPG
RUN exif_delete --replace ./**/*.JPEG
RUN exif_delete --replace ./**/*.png
RUN exif_delete --replace ./**/*.PNG
RUN exif_delete --replace ./**/*.gif
RUN exif_delete --replace ./**/*.GIF

FROM nginx:mainline-alpine-slim
RUN rm -rf /usr/share/nginx/html/*
COPY --from=prepare /app/ /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]