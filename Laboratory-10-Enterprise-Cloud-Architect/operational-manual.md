
# Operational Manual – CloudNova WordPress Stack

This manual is the handover guide for the client's IT team. It explains how to deploy,
secure, and maintain the WordPress + MySQL stack. The repo is for documentation only;
the live website runs on the Ubuntu Server VM.

## 1. System Overview
| Component | Details |
|-----------|---------|
| Host | Laptop running VirtualBox |
| Server | Ubuntu Server VM, network adapter set to Bridged |
| Web application | WordPress (enterprise-wordpress), port 8080 |
| Database | MySQL 8.0 (enterprise-db), not exposed outside |
| Persistent storage | Docker volumes db_data and wp_data |
| Firewall | UFW + DOCKER-USER whitelist (only SSH and 8080 allowed in) |
| Backups | ~/scripts/backup.sh, runs every day at 2:00 AM via cron |
| Project folder | ~/enterprise-stack |

See architecture-diagram.png for the full layout.

## 2. Deploy

### Step 1: Find the VM's IP and connect
On the VM:
ip a
The inet 192.168.X.X line under enp0s3 is the VM's IP address.

From PowerShell on the laptop:
ssh your-username@192.168.X.X

### Step 2: Install Docker
Install Docker from Docker's official repository (Ubuntu's default one does not have the
Docker Compose plugin). After adding the repository:
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo systemctl enable --now docker
sudo usermod -aG docker $USER
Log out and back in, then confirm:
docker ps

### Step 3: Start the stack
mkdir -p ~/enterprise-stack && cd ~/enterprise-stack
Copy docker-compose.yml from this repo into the folder, then:
docker compose up -d
docker compose ps
Open http://192.168.X.X:8080 in the laptop browser to reach WordPress.

## 3. Secure
sudo apt-get install -y ufw
sudo ufw allow ssh
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 8080/tcp
sudo ufw enable
sudo ufw status verbose

### Docker firewall bypass fix
Docker writes its own firewall rules, so container ports can skip UFW. Add this block to
the bottom of /etc/ufw/after.rules (change enp0s3 if your interface name is different):
# BEGIN DOCKER FIREWALL FIX
*filter
:DOCKER-USER - [0:0]
-A DOCKER-USER -m conntrack --ctstate ESTABLISHED,RELATED -j RETURN
-A DOCKER-USER -i enp0s3 -p tcp -m conntrack --ctorigdstport 8080 --ctdir ORIGINAL -j RETURN
-A DOCKER-USER -i enp0s3 -j DROP
-A DOCKER-USER -j RETURN
COMMIT
# END DOCKER FIREWALL FIX
Then apply and check:
sudo ufw reload
sudo iptables -L DOCKER-USER -n -v
To test, run a container on a port that is not allowed. It should NOT load from the laptop:
docker run -d --rm --name fwtest -p 9090:80 nginx
docker stop fwtest

## 4. Maintain

### Daily health check
cd ~/enterprise-stack
docker compose ps
sudo ufw status verbose
crontab -l
Both containers should be running and http://192.168.X.X:8080 should load.

### After a reboot
Containers start by themselves (restart: unless-stopped), and data is kept in the volumes.
Log in and check:
cd ~/enterprise-stack
docker compose ps

### Backups
Set up the backup script:
mkdir -p ~/scripts ~/backups && cd ~/scripts
Copy automation-script.sh from this repo as backup.sh, then:
chmod +x backup.sh
./backup.sh
ls -lh ~/backups/
Schedule it with env EDITOR=nano crontab -e and add:
0 2 * * * /home/your-username/scripts/backup.sh >> /home/your-username/backups/backup.log 2>&1
- Backups are saved in ~/backups/ as db_backup_YYYYMMDD_HHMMSS.sql.gz.
- Backups older than 7 days are deleted automatically.
- Check that cron ran it: cat ~/backups/backup.log

### Restore a backup
Unzip the backup file and send it into MySQL in the db container:
gunzip -c ~/backups/db_backup_YYYYMMDD_HHMMSS.sql.gz | docker exec -i enterprise-db mysql -uroot -p'CloudNova2026Root!' wordpress_db

## 5. Troubleshooting
| Problem | Cause and fix |
|---------|---------------|
| Unable to locate package docker-compose-plugin | Ubuntu's default repository doesn't have it. Install Docker from Docker's official repository. |
| docker.service does not exist, group docker does not exist, docker: command not found | Docker was never installed because of the error above. Fixing that fixes these. |
| docker-compose.yml: No such file or directory | Every login starts in the home folder. Run cd ~/enterprise-stack first. |
| the attribute version is obsolete | Only a warning. Remove the version: line from the Compose file. |
| A container isn't running | docker compose logs db or docker compose logs wordpress |
| WordPress won't load | Check docker compose ps, sudo ufw status, and the VM's current IP with ip a. |
