# Use the latest Alpine Linux base image
FROM alpine

# Update package repository index and install PostgreSQL
RUN apk update && apk upgrade &&\
    apk add --no-cache postgresql postgresql-client

# Create necessary directories
RUN mkdir -p /run/postgresql /var/lib/postgresql/data 

RUN chown -R postgres:postgres /run/postgresql /var/lib/postgresql/data
# Change ownership of directories to the postgres user
RUN chown -R postgres:postgres /run/postgresql /var/lib/postgresql

COPY init.sql /docker-entrypoint-initdb.d
# Switch to postgres user and initialize the database
USER postgres

RUN initdb -D /var/lib/postgresql/data


RUN echo "host all all 0.0.0.0/0 md5" >> /var/lib/postgresql/data/pg_hba.conf && \
    echo "listen_addresses='*'" >> /var/lib/postgresql/data/postgresql.conf

RUN pg_ctl -D /var/lib/postgresql/data -o "-c listen_addresses='*'" -w start && \
    psql --command "ALTER USER postgres WITH PASSWORD 'postgres';" && \
    psql -U postgres -f /docker-entrypoint-initdb.d && \
    pg_ctl -D /var/lib/postgresql/data -w stop

CMD ["postgres", "-D", "/var/lib/postgresql/data"]

EXPOSE 5432

