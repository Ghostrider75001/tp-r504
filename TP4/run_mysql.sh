docker run \
    --name tp4-mariadb \
    --network net-tp4 \
    -e MARIADB_ROOT_PASSWORD=root\
    -v data_mdb:/var/lib/mysql \
    -p 3307:3306 \
    -d \
    mariadb:11.2
mysql:8.0