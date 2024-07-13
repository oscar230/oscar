# Prepare content
FROM python:3-bookworm AS prepare
WORKDIR /app
COPY ./e012/ ./
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


# Build
FROM node:18-alpine AS builder
WORKDIR /app
COPY ./e012/package.json ./e012/package-lock.json ./
RUN npm install
COPY --from=prepare /app .
RUN npm run build

# Serve application
FROM node:18-alpine AS server
WORKDIR /app
COPY --from=builder /app/build ./build
RUN npm install -g serve
EXPOSE 80
CMD ["serve", "-s", "build", "-l", "80"]