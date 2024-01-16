# Use the official Alpine Linux image as the base
FROM alpine:latest

# Add a user named "test"
RUN adduser -D test

# Install PostgreSQL
RUN apk add --no-cache postgresql postgresql-contrib

# Switch to the "test" user
USER test

# Initialize the database
CMD /etc/init.d/postgresql setup && /etc/init.d/postgresql start

# Start the PostgreSQL service
ENTRYPOINT ["postgres", "-D", "/var/lib/postgresql/data"]

EXPOSE 5432