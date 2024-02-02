FROM mysql:latest

EXPOSE 3306
COPY . .
COPY exec ./
COPY init-script.sh /docker-entrypoint-initdb.d/

