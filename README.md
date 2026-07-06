# hello-docker

Professional, minimal README for a small Node.js application packaged with Docker.

## Project Overview

{project_description}

This repository contains a simple Node.js application and a Dockerfile that uses the official Node 22 base image. The container listens on port 3000 by default.

## Prerequisites

- Node.js and npm (for local development)
- Docker (for building and running the container)

## Install and run locally

Open PowerShell in the project root and run:

```pwsh
Set-Location 'C:\Users\Th3Bo\Desktop\hello-docker'
npm install
npm start
```

The app will start on port 3000 by default. Verify with:

```pwsh
# quick health check
Invoke-RestMethod -Uri 'http://localhost:3000'
```

## Build and run with Docker

Build the image:

```pwsh
docker build -t hello-docker:latest .
```

Run the container (maps container port 3000 to host port 3000):

```pwsh
docker run --rm -p 3000:3000 --name hello-docker hello-docker:latest
```

Verify with:

```pwsh
Invoke-RestMethod -Uri 'http://localhost:3000'
```

## Environment

The Dockerfile sets the environment variable `PORT=3000`. You can override at runtime:

```pwsh
docker run --rm -e PORT=4000 -p 4000:4000 hello-docker:latest
```

## Project structure

- `Dockerfile` — builds the production image (based on node:22)
- `package.json` / `package-lock.json` — Node dependencies
- `README.md` — this file

## Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature`
3. Commit your changes and open a PR

## Troubleshooting

- If `npm install` fails, inspect `build.log` (if you ran commands with `Tee-Object`) or re-run `npm install` locally to see the full error.
- If Docker build fails, ensure Docker Desktop/Engine is running and you have network access to download base images.



## Author

Suliman
