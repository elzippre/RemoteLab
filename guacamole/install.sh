#!/bin/bash
# Remote Lab Install Script+

echo "Enter all variables in .env file!"
echo "DOCKERPATH, GUACAMOLE_PASSWORD"

cd $DOCKERPATH
echo "Database initialization..."
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --mysql > initdb.sql
echo "Database initialization done."

echo "Installing Guacamole Server."
docker compose up -d

