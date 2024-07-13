# Stage 1: Prepare content
FROM python:3-bookworm AS prepare
WORKDIR /app
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

# # Stage 2: Build application
# FROM node:18-alpine AS builder
# WORKDIR /app
# COPY ./e012/package.json ./e012/package-lock.json ./
# RUN npm install
# COPY --from=prepare /app .
# RUN npm run build
# RUN ls -la

# # Stage 3: Serve application
# FROM node:18-alpine AS server
# WORKDIR /app
# COPY --from=builder /app/.svelte-kit/output ./build
# EXPOSE 80
# CMD ["node", "build/server/index.js"]

# Stage 2: Build the application
FROM node:18-alpine AS build
WORKDIR /app
COPY --from=prepare /app/package*.json ./
RUN npm install
COPY --from=prepare /app .
RUN npm run build
RUN ls -la

# Stage 3: Serve the application
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
