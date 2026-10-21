
#!/bin/bash
# Disaster recovery backup script for the WordPress + MySQL stack
# Dumps the MySQL database into a compressed .sql.gz file

BACKUP_DIR="/home/$(whoami)/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
DB_CONTAINER="enterprise-db"
DB_NAME="wordpress_db"
DB_USER="root"
DB_PASSWORD="CloudNova2026Root!"

mkdir -p "$BACKUP_DIR"

echo "Starting backup at $TIMESTAMP..."

# Dump the MySQL database from inside the running container
docker exec "$DB_CONTAINER" mysqldump -u"$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_DIR/db_backup_$TIMESTAMP.sql"

# Compress the dump
gzip "$BACKUP_DIR/db_backup_$TIMESTAMP.sql"

# Remove backups older than 7 days to avoid filling the disk
find "$BACKUP_DIR" -name "db_backup_*.sql.gz" -mtime +7 -delete

echo "Backup completed: $BACKUP_DIR/db_backup_$TIMESTAMP.sql.gz"
