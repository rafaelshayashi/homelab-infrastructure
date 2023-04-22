include docker/traefik/.env.example

setup-traefik:
	sed -i 's/you@example.com/'"${CF_API_EMAIL}"'/g' docker/traefik/data/traefik.yml
	sed -i 's/local.example.com/'"${DOMAIN}"'/g' docker/traefik/data/config.yml
	sed -i 's/local.network/'"${LOCAL_DOMAIN}"'/g' docker/traefik/data/config.yml

start-traefik:
	docker-compose -f docker/traefik/docker-compose.yaml up -d --force-recreate

start-portainer:
	docker-compose -f docker/portainer/docker-compose.yaml up -d
