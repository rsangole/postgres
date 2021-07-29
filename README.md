# How to setup a Postgres from scratch

1. Pull postgres docker image using `docker pull postgres:13.3`
1. Edit `00-postgres-init.sh` with your custom settings
1. Run `./00-postgres-init.sh`, this sets up new roles + new databases
1. Check the configuration in `docker-compose.yml` for your postgres database settings and docker images
1. To run RStudio and Postgres together, run `docker-compose up -d`
1. Connect to RStudio in a browser using `localhost:8787`
1. Test your database by running `postgres.R`