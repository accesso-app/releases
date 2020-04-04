### Configuration

#### Envs

- `SERVER_NAME` — domain to listen
- `MAIN_UPSTREAM` — proxy from `location /`

#### Volumes

- `/var/lib/authmenow/tls/authmenow.crt`
- `/var/lib/authmenow/tls/authmenow.pem`
- `/etc/ssl/certs/dhparam.pem`
