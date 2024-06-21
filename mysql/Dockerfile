FROM mysql:8.0
ENV MYSQL_ROOT_PASSWORD=ExpenseApp@1 \
    MYSQL_DATABASE=transactions \
    MYSQL_USER=expense \
    MYSQL_PASSWORD=ExpenseApp@1
COPY scripts/* /docker-entrypoint-initdb.d/

RUN useradd -ms /bin/bash expenseuser

# Change ownership of MySQL directories to the new user
RUN chown -R expenseuser:expenseuser /var/lib/mysql /var/run/mysqld

# Switch to the non-root user
USER expenseuser
