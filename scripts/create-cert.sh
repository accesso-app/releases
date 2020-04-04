#!/bin/bash

openssl req -x509 -out ./tls/authmenow.crt -keyout ./tls/authmenow.pem \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=auth.local' -extensions EXT -config <( \
   printf "[dn]\nCN=auth.local\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:auth.local\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")

openssl dhparam -out ./tls/dhparam.pem 2048
