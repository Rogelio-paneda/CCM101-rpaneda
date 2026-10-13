# Firewall Configuration

### Security Commands Executed

*   **Command used to allow SSH:**
    `sudo ufw allow ssh`

*   **Commands used to set the Default Deny policy:**
    `sudo ufw default deny incoming`
    `sudo ufw default allow outgoing`

*   **Command used to allow Port 8080:**
    `sudo ufw allow 8080/tcp`

### Critical Firewall Warning
If you were to run `sudo ufw enable` before running `sudo ufw allow ssh`, the firewall would immediately drop your active remote connection, permanently locking you out of your own server.