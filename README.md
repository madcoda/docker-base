# docker-base
collection of dockerfiles for my development

## Docker Images

This repository contains Docker images for various PHP-FPM versions and other development tools:

- `php-fpm-72` - PHP 7.2-fpm
- `php-fpm-82` - PHP 8.2-fpm
- `php-fpm-85` - PHP 8.5-fpm

## Automatic Builds

GitHub Actions automatically builds and pushes Docker images to Docker Hub (`madcoda/docker-base`) when changes are pushed to the main branch. Only modified image directories are rebuilt.

### Setup GitHub Actions

To enable automatic builds, configure the following secrets in your GitHub repository:

1. Go to: **Repository Settings** → **Secrets and variables** → **Actions**
2. Add the following secrets:
   - `DOCKERHUB_USERNAME` - Your Docker Hub username (e.g., `madcoda`)
   - `DOCKERHUB_TOKEN` - Docker Hub access token (create one at https://hub.docker.com/settings/security)

**Note:** Use an access token, not your Docker Hub password.

## Manual Docker Build

To build images locally:

```bash
# Build a specific image
docker build -t madcoda/docker-base:php-fpm-82 ./php-fpm-82

# Push to Docker Hub
docker push madcoda/docker-base:php-fpm-82
```
