include docker/traefik/.env

setup-traefik:
	sed -i 's/you@example.com/'"${CF_API_EMAIL}"'/g' docker/traefik/data/traefik.yml
	sed -i 's/local.example.com/'"${DOMAIN}"'/g' docker/traefik/data/config.yml
	sed -i 's/local.network/'"${LOCAL_DOMAIN}"'/g' docker/traefik/data/config.yml
	sed -i 's/user@example.com/'"${CF_API_EMAIL}"'/g' docker/traefik/docker-compose.yml
	sed -i 's/YOUR_API_TOKEN/'"${CF_DNS_API_TOKEN}"'/g' docker/traefik/docker-compose.yml

start-traefik:
	docker-compose -f docker/traefik/docker-compose.yml up -d --force-recreate

setup-dashy:
	sed -i 's/local.example.com/'"${DOMAIN}"'/g' docker/dashy/docker-compose.yml

start-portainer:
	docker-compose -f docker/portainer/docker-compose.yaml up -d
