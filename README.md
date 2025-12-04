# Traefik Local VPS

This project sets up a local Traefik instance using Docker Compose.

## Getting Started

To start the Traefik container:

```bash
make up
# or
docker compose up -d
```

To restart the Traefik container with force-recreation (useful after configuration changes):

```bash
make reup
# or
docker compose up -d --force-recreate
```

## Traefik Dashboard

The Traefik dashboard is available at [http://localhost:8080/dashboard/](http://localhost:8080/dashboard/).

**Note:** The dashboard is enabled for convenience using the `--api.insecure=true` flag in `docker-compose.yml`. This setting is **not recommended for production environments** as it exposes the API and dashboard without authentication. For production, consider securing the dashboard with a proper authentication mechanism (e.g., Basic Auth, OAuth) and/or restricting access.
