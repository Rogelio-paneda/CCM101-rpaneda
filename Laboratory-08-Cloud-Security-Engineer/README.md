# Mission 8: The Cloud Security Engineer

## Mission Overview
In this mission, I stepped into the role of a Cloud Security Engineer to secure an exposed Ubuntu server. By deploying a containerized web application and configuring the Uncomplicated Firewall (UFW), I applied defense-in-depth principles to enforce a strict Default Deny policy while safely managing specific port access for legitimate services.

## Objectives
*   Understand the concept of the Attack Surface and the Principle of Least Privilege (PoLP).
*   Perform a basic security audit of active network ports on a Linux server.
*   Configure the Uncomplicated Firewall (UFW) with a Default Deny policy.
*   Implement granular port management to selectively allow SSH and HTTP traffic.
*   Document firewall rules and security best practices using Markdown.

## Commands Executed
*   `docker run -d -p 8080:80 --name secure-web-app nginx`
*   `curl localhost:8080`
*   `sudo ufw allow ssh`
*   `sudo ufw default deny incoming`
*   `sudo ufw default allow outgoing`
*   `sudo ufw enable`
*   `sudo ufw status verbose`
*   `sudo ufw allow 8080/tcp`
*   `sudo ufw status numbered`

## Skills Learned
*   Deploying foundational host-based firewalls on Linux distributions.
*   Enforcing Default Deny security policies to mitigate unauthorized access.
*   Managing granular TCP port rules for remote administration and web traffic.
*   Securing containerized workloads by aligning firewall rules with exposed Docker ports.