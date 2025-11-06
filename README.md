# dlt-intro
decouverte de dlt

# documentation dtl
https://dlthub.com/docs/intro <br>
https://dlthub.com/docs/reference/installation

# build la composition
sudo docker compose up --build

# run a container puis le supprime
sudo docker run -it --rm dlt-intro-dlt

# lancer un service de docker-compose
docker compose up -d --build python-runner

# ####################
# suppression docker
# ####################

# nettoyer/supprimer tous les éléments de docker
docker compose down --rmi all --volumes

# cas extreme pour tout dégager
docker stop $(docker ps -q) 2>/dev/null; docker rm -f $(docker ps -aq) 2>/dev/null; docker rmi -f $(docker images -q) 2>/dev/null; docker volume rm $(docker volume ls -q) 2>/dev/null; docker network rm $(docker network ls | grep -vE "bridge|host|none" | awk '{print $1}') 2>/dev/null; docker system prune -a --volumes -f

# ####################
# documentation postgres
# ####################

# documentation postgres admin
PGADMIN_DEFAULT_PASSWORD: pgadmin <br>
POSTGRES_PASSWORD: postgres