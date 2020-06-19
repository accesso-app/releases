### Configuration

#### Envs

- `SERVER_NAME` — domain to listen
- `MAIN_UPSTREAM` — proxy from `location /`
- `BACKEND_UPSTREAM` — proxy from `location /api/v0`

#### Volumes

- `/var/lib/accesso/tls/accesso.crt`
- `/var/lib/accesso/tls/accesso.pem`
- `/etc/ssl/certs/dhparam.pem`
