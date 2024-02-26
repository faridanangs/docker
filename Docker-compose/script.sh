docker compose -f docker-compose.staging.yml down
docker compose -f docker-compose.staging.yml up -d --build --force-recreate
docker compose -f docker-compose.staging.yml exec -it nginx /bin/sh

# docker compose
docker compose -f docker-compose.yml up -d --build --force-recreate
docker inspect test_always | grep -i restartcount
docker compose up -d --force-recreate
docker inspect test_always

docker exec -it alpine_app /bin/sh

# create network
 docker network create --driver bridge mysql