docker run \
    --name tp4-mysql \
    --network net-tp4 \
    -e MYSQL_ROOT_PASSWORD=root\
    -v data_mdb:/var/lib/mysql \
    -p 3307:3306 \
    -d \
	mysql:8.0
#    mariadb:11.2
#    -e MARIADB_ROOT_PASSWORD=root\

