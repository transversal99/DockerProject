FROM postgres:10.0-alpine

# Update the package list
RUN apk update
# Set up a non-root user for PostgreSQL if it doesn't exist
RUN id -u postgres &>/dev/null || adduser -D postgres
#switch to user postgres
USER postgres

RUN chmod 0700 /var/lib/postgresql/data &&\initdb /var/lib/postgresql/data 

EXPOSE 5432