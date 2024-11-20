FROM mysql:latest

# Copy initialization SQL scripts
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the MySQL port
EXPOSE 3306
