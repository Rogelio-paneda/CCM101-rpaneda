# Multi-Tier Architecture Overview

## The Web/Application Tier
The web and application tier serves as the front-facing layer of the application stack. Its primary role is to host the user interface, process user inputs, handle incoming HTTP/HTTPS traffic from clients, and execute application logic before communicating with backend resources.

## The Database Tier
The database tier serves as the storage foundation of the application stack. Its primary role is to securely manage, organize, and store persistent data, such as user credentials, application configurations, session states, and metadata, ensuring data durability across container restarts.

## Why Separate Them?
Separating the web server and the database into distinct containers enforces the principle of single responsibility, ensuring each component can be updated, scaled, or debugged independently without impacting the other. It enhances security by isolating database processes and credentials from public-facing web traffic, preventing direct user exposure to raw data assets. Additionally, multi-container separation simplifies resource optimization, allowing developers to allocate dedicated CPU and memory limits tailored specifically to workload demands.