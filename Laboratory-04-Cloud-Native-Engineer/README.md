# Laboratory Activity 4: The Cloud-Native Engineer

## Mission Overview
This laboratory activity explores the architectural and operational transition from traditional hardware virtualization to lightweight containerization. Using the KillerCoda cloud-native playground environment, an Nginx containerized web server was pulled from Docker Hub, deployed with port mapping, tested via CLI, managed through its lifecycle, and documented for enterprise modernizations.

## Objectives
* Differentiate between traditional Virtual Machines (VMs) and Containers.
* Access and verify a Docker-enabled cloud environment using KillerCoda.
* Execute fundamental Docker CLI commands.
* Pull, run, expose, manage, and terminate a containerized application (Nginx).
* Create professional technical documentation using Markdown.
* Maintain a well-structured GitHub Cloud Computing Portfolio.

---

## Docker Commands Executed

| Command | Purpose / Description | Checkpoint |
| :--- | :--- | :--- |
| `docker --version` | Displays the installed Docker CLI version | Checkpoint 3 |
| `docker info` | Displays system-wide Docker configuration and daemon status | Checkpoint 3 |
| `docker pull nginx` | Downloads the official Nginx container image from Docker Hub | Checkpoint 4 |
| `docker run -d -p 8080:80 --name nginx-web nginx` | Runs container in detached mode and maps host port 8080 to container port 80 | Checkpoint 4 |
| `curl http://localhost:8080` | Sends a local HTTP request to verify the active Nginx web server | Checkpoint 4 |
| `docker ps` | Lists all currently active and running containers | Checkpoint 5 |
| `docker stop nginx-web` | Gracefully halts the execution of the running `nginx-web` container | Checkpoint 5 |
| `docker ps -a` | Displays all containers on the system (both running and stopped) | Checkpoint 5 |
| `docker rm nginx-web` | Permanently deletes the stopped container instance | Checkpoint 5 |

---

## Skills Learned
* Understanding OS-level virtualization vs. hypervisor-based virtualization.
* Container runtime management and image pulling using Docker Hub.
* Networking fundamentals within Docker containers (port mapping `-p host:container`).
* Executing container lifecycle controls (start, inspect, stop, destroy).
* Standardizing technical documentation and workflow evidence in Markdown.

---

## Challenges Encountered
* **Port Mapping Logic:** Ensuring host port `8080` was correctly forwarded to internal container port `80` so incoming HTTP requests could reach the Nginx service.
* **Lifecycle Order:** Recognizing that Docker requires a running container to be stopped with `docker stop` before it can be permanently removed with `docker rm`.
