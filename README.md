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

The Traefik dashboard is available via [http://traefik.myvps.local](http://traefik.myvps.local).

This is made possible by the `traefik.http.routers.dashboard.entrypoints=web` label in `docker-compose.yml`, which exposes the dashboard on the standard HTTP port (80).

**Note:** The dashboard is enabled for convenience using the `--api.insecure=true` flag in `docker-compose.yml`. This setting is **not recommended for production environments** as it exposes the API and dashboard without authentication. For production, consider securing the dashboard with a proper authentication mechanism (e.g., Basic Auth, OAuth) and/or restricting access.

## Host Configuration

You need to add `127.0.0.1 random.myvps.local traefik.myvps.local` to your `/etc/hosts` file. You can do this by running:

```bash
sudo nano /etc/hosts
```
Then, add the line and save the file.