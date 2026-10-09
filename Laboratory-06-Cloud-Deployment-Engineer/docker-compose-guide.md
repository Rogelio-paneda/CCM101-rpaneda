# Docker Compose Technical Guide

## What does the `services:` block do?
The `services:` block acts as the primary container definition section in a Docker Compose file. It declares all individual application components (such as `database` and `app`) that make up the multi-container stack, defining their container images, environments, network mappings, and runtime configurations.

## Container Service Discovery (`MYSQL_HOST`)
The Nextcloud app container locates the MariaDB database container using Docker's internal DNS resolution. By setting `MYSQL_HOST=database`, Nextcloud references the service name defined under `services:` in the Compose file. Docker automatically routes network requests targeted at `database` to the container's private IP address on the shared Compose network.

## `docker run` vs. `docker-compose up -d`
- **`docker run`**: Executes a single container using explicit, long command-line flags. It requires manual setup for networking, environment variables, and volume linkages for every individual container.
- **`docker-compose up -d`**: Reads a declarative Infrastructure as Code (`docker-compose.yml`) blueprint to define, network, and orchestrate multiple containers simultaneously in the background using a single command.