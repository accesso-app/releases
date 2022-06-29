# accesso releases

Deploy workflows

## Setup local instance

1. Install `docker` ([install for mac](https://docs.docker.com/docker-for-mac/install/)) and `docker-compose` ([install](https://docs.docker.com/compose/install/))
1. Clone this repository to `accesso-releases` directory (it helps to identify images in `docker ps` list)
1. `cd accesso-releases`
1. Install certificate `./tls/accesso.crt` to trusted keychain
1. Copy `.env.sample` to `.env`. Modify content of `.env. if required
1. Start services with `docker-compose up -d`. Stop it with `docker-compose down`

## Instructions
<details><summary>Install certificate</summary>
Install mkcert:

# macOS
```
brew install mkcert
brew install nss # if you use Firefox
```
# linux
Get latest mkcert release from ([mkcert releases](https://github.com/FiloSottile/mkcert/releases))

Run `mkcert -install`
Run `./scripts/create-cert.sh`
</details>
