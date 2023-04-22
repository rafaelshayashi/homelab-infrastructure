start-traefik:
	docker-compose -f docker/traefik/docker-compose.yaml up -d --force-recreate

start-portainer:
	docker-compose -f docker/portainer/docker-compose.yaml up -d
