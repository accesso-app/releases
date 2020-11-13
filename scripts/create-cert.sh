#!/bin/bash

openssl req -x509 -out ./tls/accesso.crt -keyout ./tls/accesso.pem \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=accesso.local' -extensions EXT -config <( \
   printf "[dn]\nCN=accesso.local\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:accesso.local\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")

openssl dhparam -out ./tls/dhparam.pem 2048
