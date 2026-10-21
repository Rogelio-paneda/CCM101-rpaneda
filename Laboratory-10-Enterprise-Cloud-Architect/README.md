# Laboratory 10 - Enterprise Cloud Architect

## Mission Overview
e learning basic Linux commands to a Cloud Automation Engineer scripting self-healing infrastructure, you 
have proven your technical expertise at every level. 
Your exceptional track record has caught the attention of the executive board. Cledmar Badongen, the 
visionary CEO of CloudNova Technologies, has personally selected you for a massive undertaking. You have 
been promoted to Enterprise Cloud Architect. 
For your final mission, the training wheels are completely off. There are no step-by-step instructions. You are 
required to design, deploy, secure, automate, and document a complete, production-ready enterprise 
infrastructure of your own choosing from scratch. Finally, you will prove your system works by defending it live. 
Remember: An Architect does not follow a manual; they write it. 

## Mission Objective
- Conceptualize and diagram a custom enterprise cloud infrastructure. 
- Provision and configure a local Virtual Machine running a headless Linux distribution (Ubuntu Server). 
- Install and configure Docker and Docker Compose on a fresh operating system. 
- Deploy a multi-tier containerized application utilizing persistent data volumes without guided instructions. 
- Implement comprehensive system security and port management independently. 
- Automate operational tasks (such as disaster recovery or health checks) using custom Bash scripts and task scheduling. 
- Synthesize all technical documentation into a professional GitHub Cloud Computing Portfolio. 
- Demonstrate and defend your infrastructure live in a simulated corporate boardroom setting.

## Command Executed
# Laboratory 10 - Enterprise Cloud Architect

## Command Executed

### Requirement 1: VM Setup and IP Address
```bash
ip a
sudo apt-get install -y openssh-server
sudo systemctl enable --now ssh
```

### Requirement 2: Docker Installation and Deployment
```bash
ssh your-username@192.168.X.X
sudo apt-get update -y
sudo apt-get install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo systemctl enable --now docker
sudo usermod -aG docker $USER
docker ps
mkdir -p ~/enterprise-stack
cd ~/enterprise-stack
cat > docker-compose.yml << 'EOF'
cat docker-compose.yml
docker compose up -d
docker compose ps
sudo reboot
docker compose logs db
docker compose logs wordpress
```

### Requirement 3: Firewall Security (UFW)
```bash
sudo apt-get install -y ufw
sudo ufw allow ssh
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 8080/tcp
sudo ufw enable
sudo ufw status verbose
sudo nano /etc/ufw/after.rules
sudo ufw reload
sudo iptables -L DOCKER-USER -n -v
docker run -d --rm --name fwtest -p 9090:80 nginx
docker stop fwtest
```

### Requirement 4: Backup Script and Cron
```bash
mkdir -p ~/scripts ~/backups
cd ~/scripts
cat > backup.sh << 'EOF'
chmod +x backup.sh
./backup.sh
ls -lh ~/backups/
realpath backup.sh
env EDITOR=nano crontab -e
0 2 * * * /home/your-username/scripts/backup.sh >> /home/your-username/backups/backup.log 2>&1
crontab -l
cat ~/backups/backup.log
```

## Skills Learned
- **Virtual machine setup** – Installed Ubuntu Server in VirtualBox and used a Bridged network so the VM gets its own IP address.
- **Remote access with SSH** – Controlled the VM from the laptop using PowerShell.
- **Docker installation** – Installed Docker from its official repository after learning that Ubuntu's default repository doesn't have `docker-compose-plugin`.
- **Infrastructure as Code** – Wrote a `docker-compose.yml` file that builds a two-tier WordPress + MySQL stack the same way every time.
- **Data persistence** – Used Docker volumes and `restart: unless-stopped` so data and containers survive a reboot.
- **Firewall security** – Configured UFW with a "deny all, allow only what's needed" rule, and fixed Docker's firewall bypass using the DOCKER-USER chain.
- **Bash scripting** – Wrote a backup script using variables, `mysqldump`, `gzip`, and `find` to clean up old backups.
- **Task automation with Cron** – Scheduled the backup to run nightly and logged the output as proof.
- **Troubleshooting** – Read error messages to find the root cause (one failed install caused several later errors) and checked container logs.
- **Documentation** – Organized the GitHub repo as a handover manual 

