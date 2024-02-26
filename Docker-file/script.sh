# from instruction
docker build -t template/from from

# run instruction
docker build -t template/run:lates run
docker build -t template/run:lates run --progress=plain --no-cache
 
# cmd instruction
docker build -t template/cmd command
docker image inspect template/cmd

docker container create --name command template/cmd
docker container start command
docker container logs command 
docker run --rm --name command template/cmd 

# label instruction
docker build -t template/label label
docker image inspect template/label

# add instruction
docker build -t template/add add
docker container create --name add template/add
docker container start add
docker exec -it template/add /bin/sh

# escape instruction
docker build -t template/escape escape
docker container create --name add template/add
docker container start add


# env instructions
docker run --rm -d --name envfile -p 8080:80 --env-file=.env --cpus="0.5" --memory="10m" template/env:latest
docker exec -it envfile env     

# arg instructions
docker build -t template/arg arg  
docker run --rm -d --name arg -p 8081:80 --cpus="0.5" --memory="10m" template/arg:latest              
docker exec -it arg cat version.txt

# workdir instruction
docker build -t template/workdir workdir
docker run --rm -d --name workdir --cpus="0.5" --memory="10m" -p 8082:80 template/workdir:latest 
docker exec -it workdir /bin/sh
docker container ls


# Entrypoint instruction
docker build -t template/entry entrypoint
docker run --rm -d --name entry template/entry

docker run --rm -d --name go-social-media -p 8080:8000 --env-file=.env temlep/social-media:multistage  