# Prepare
FROM python:3-bookworm AS prepare
WORKDIR /app/
COPY ./e012/ ./
# RUN pip install pillow optimize-images css-html-js-minify exif_delete
# RUN optimize-images ./
# RUN css-html-js-minify ./
# RUN exif_delete --replace ./**/*.jpg
# RUN exif_delete --replace ./**/*.JPG
# RUN exif_delete --replace ./**/*.JPEG
# RUN exif_delete --replace ./**/*.png
# RUN exif_delete --replace ./**/*.PNG
# RUN exif_delete --replace ./**/*.gif
# RUN exif_delete --replace ./**/*.GIF

# Build
FROM node:21-alpine as build
WORKDIR /app
COPY e012/package*.json ./
RUN npm install
COPY --from=prepare /app ./
RUN npm run build

# Serve 
FROM ghcr.io/static-web-server/static-web-server:2 as server
COPY --from=build /app/build /public
EXPOSE 80