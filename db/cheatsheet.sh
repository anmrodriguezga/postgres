# Start PostgreSQL container
docker exec -it postgres_devcontainer-db-1 /bin/bash

# Access dvdrental database
docker exec -it postgres_devcontainer-db-1 sudo -u postgres psql --host 0.0.0.0 --username postgres --password --dbname dvdrental

# Restore the dvdrental database
pg_restore -c -U "postgres" -d "dvdrental" -v "/tmp/dvdrental.tar"

# Execute SQL commands
psql -U postgres -d dvdrental -a -f /workspaces/DQL-Data_Query_Language/select.sql

# Execute SQL commands in ACI
psql -U postgres -d dvdrental -a -f /tmp/postgres/DQL-Data_Query_Language/select.sql