.PHONY: rebuild

down:
	sudo docker compose down

up:
	sudo docker compose up -d

# remove all stopped containers
prune:
	echo y | sudo -S docker container prune

# Remove the Docker image
rmi:
	sudo docker rmi duckdb-jupyter-server 

lsi:
	sudo docker image ls -a

lsc:
	sudo docker container ls -a

login:
	sudo docker exec -it duckdb-jupyter-server bash

rebuild: down prune rmi up
