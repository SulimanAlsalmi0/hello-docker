# Stage 1: Build the Flutter Web Assets
FROM ghcr.io/cirruslabs/flutter:stable AS builder

WORKDIR /app

# Allow Flutter to run as root in the container
ENV FLUTTER_ALLOW_ROOT=1

# Copy dependency files first to utilize Docker caching layers
COPY pubspec.* ./
RUN flutter pub get

# Copy the rest of the application files
COPY . .

# Build the production web files
RUN flutter build web --release

# Stage 2: Serve with Nginx
FROM nginx:alpine

# Remove default static files from Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy the build artifacts from Stage 1 to Nginx public folder
COPY --from=builder /app/build/web /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]