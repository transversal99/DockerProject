# Use the latest Alpine Linux base image
FROM alpine:latest

# Update package repository index and install PostgreSQL
RUN apk update && \
    apk add --no-cache postgresql postgresql-client

# Create necessary directories
RUN mkdir -p /run/postgresql /var/lib/postgresql/data

# Change ownership of directories to the postgres user
RUN chown -R postgres:postgres /run/postgresql /var/lib/postgresql

COPY init.sql /docker-entrypoint-initdb.d/
# Switch to postgres user and initialize the database
USER postgres
RUN initdb -D /var/lib/postgresql/data

# Adjust permissions of the data directory
RUN chmod 0700 /var/lib/postgresql/data

# Set the working directory
WORKDIR /usr/src/app

# Start PostgreSQL Database Server with the correct configuration file
ENTRYPOINT ["pg_ctl", "-D", "/var/lib/postgresql/data", "start"]

# Expose the PostgreSQL port
EXPOSE 5432

