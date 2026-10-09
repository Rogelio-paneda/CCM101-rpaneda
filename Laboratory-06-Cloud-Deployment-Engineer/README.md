# Laboratory 06: The Cloud Deployment Engineer

## Mission Overview
This mission focuses on transitioning from manual single-container deployments to Infrastructure as Code (IaC) principles using Docker Compose. A two-tier private cloud storage solution combining Nextcloud and MariaDB was configured and deployed.

## Objectives
- Understand multi-tier web application architecture.
- Write and structure a multi-container `docker-compose.yml` file.
- Deploy, verify, and teardown containerized infrastructure using Docker Compose CLI commands.
- Implement container service discovery via environment variables.

## Commands Executed
- `mkdir nextcloud-deployment && cd nextcloud-deployment`
- `nano docker-compose.yml`
- `docker-compose up -d`
- `docker-compose ps`
- `docker-compose down`

## Skills Learned
- Declarative Infrastructure as Code (IaC) syntax using YAML.
- Multi-container orchestration and Docker internal DNS resolution.
- Managing multi-tier stack lifecycles with Docker Compose.