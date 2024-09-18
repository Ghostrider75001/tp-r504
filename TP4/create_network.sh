docker network create --driver=bridge net-tp4
docker network connect net-tp4 $(docker ps -aq)