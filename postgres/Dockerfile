
FROM alpine


RUN apk update && apk upgrade &&\
    apk add --no-cache postgresql postgresql-client


RUN mkdir -p /run/postgresql /var/lib/postgresql/data

RUN chown -R postgres:postgres /run/postgresql /var/lib/postgresql/data

RUN chown -R postgres:postgres /run/postgresql /var/lib/postgresql

COPY init.sql /tmp/bdd.sql

USER postgres

RUN initdb -D /var/lib/postgresql/data


RUN echo "host all all 0.0.0.0/0 md5" >> /var/lib/postgresql/data/pg_hba.conf && \
    echo "listen_addresses='*'" >> /var/lib/postgresql/data/postgresql.conf

RUN pg_ctl -D /var/lib/postgresql/data -o "-c listen_addresses='*'" -w start && \
    psql --command "ALTER USER postgres WITH PASSWORD 'toto';" && \
    psql -U postgres -f /tmp/bdd.sql && \
    pg_ctl -D /var/lib/postgresql/data -w stop

CMD ["postgres", "-D", "/var/lib/postgresql/data"]

EXPOSE 5432

