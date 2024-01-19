# Use Alpine Linux as the base image
FROM alpine:latest

# Install PostgreSQL and its client
RUN apk add --no-cache postgresql postgresql-client

# Create necessary directories
RUN mkdir -p /run/postgresql /var/lib/postgresql/data

# Change ownership of directories
RUN chown -R postgres:postgres /run/postgresql /var/lib/postgresql

# Switch to postgres user and initialize the database
USER postgres
RUN initdb -D /var/lib/postgresql/data

# Update PostgreSQL configuration
RUN echo "host all all 0.0.0.0/0 md5" >> /var/lib/postgresql/data/pg_hba.conf
RUN echo "listen_addresses='*'" >> /var/lib/postgresql/data/postgresql.conf
RUN echo "unix_socket_directories = '/run/postgresql'" >> /var/lib/postgresql/data/postgresql.conf

# Set the working directory
WORKDIR /usr/src/app

# Start PostgreSQL Database Server with the correct configuration file
CMD ["postgres", "-D", "/var/lib/postgresql/data"]

# Expose the PostgreSQL port
EXPOSE 5432
