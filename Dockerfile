# Stage 1: Build the Astro site
FROM node:22-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# Stage 2: Serve the static output with Apache
FROM httpd:2.4
COPY --from=build /app/dist/ /usr/local/apache2/htdocs/