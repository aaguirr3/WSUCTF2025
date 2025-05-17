#!/bin/bash

# Wait for MySQL to be ready
echo "Waiting for MySQL to be ready..."
while ! nc -z $DB_HOST $DB_PORT; do   
  sleep 1
  echo "Waiting for MySQL at $DB_HOST:$DB_PORT..."
done

echo "MySQL is up - executing command"

# Initialize the database with your SQL script
mysql -u $DB_USER -p$DB_PASSWORD -h $DB_HOST < /app/init.sql

# Start the application
node /app/src/app.js

