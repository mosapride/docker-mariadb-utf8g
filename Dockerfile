FROM mariadb

# UTF-8
COPY conf.d/mariadb.cnf /etc/mysql/conf.d/
