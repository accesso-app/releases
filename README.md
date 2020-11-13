# accesso releases

Deploy workflows

## Setup local instance

1. Install `docker` ([install for mac](https://docs.docker.com/docker-for-mac/install/)) and `docker-compose` ([install](https://docs.docker.com/compose/install/))
1. Clone this repository to `accesso-releases` directory (it helps to identify images in `docker ps` list)
1. `cd accesso-releases`
1. Install certificate `./tls/accesso.crt` to trusted keychain
1. Add `127.0.0.1 accesso.local` to `/etc/hosts` (hint: use `sudo`)
1. Copy `.env.sample` to `.env`. Modify content of `.env. if required
1. Start service with `./start-local.sh`. Stop it with `CTRL+C`

## Instructions

<details><summary>Install certificate on macOS</summary>

- Open `./tls/accesso.crt` with Keychain Access
- Select `System` keychain and press "Add"
- Open `System` keychain in Keychain Access, double click on `accesso.local` item
- Expand "Trust" section, and change "When using this certificate" property to "Always trust"
- Close `accesso.local` window and approve changes with password or Touch ID
- Icon on `accesso.local` item in Keychain Access window should have small plus icon inside
</details>
