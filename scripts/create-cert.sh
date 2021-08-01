#!/bin/bash

mkcert -key-file tls/accesso-local.pem -cert-file tls/accesso-local.cert accesso.localhost "*.accesso.localhost"
