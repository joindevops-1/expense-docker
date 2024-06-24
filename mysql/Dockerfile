FROM mysql:8.0
COPY scripts/* /docker-entrypoint-initdb.d/

RUN adduser -r expense

# Change ownership of MySQL directories to the new user
RUN chown -R expense:expense /var/lib/mysql /var/run/mysqld

# Switch to the non-root user
USER expense
