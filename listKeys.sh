#!/bin/sh

. .secrets 

curl \
    -H "X-Vault-Token: i$root_token" \
    -H "Content-Type: application/json" \
    -X POST \
    -d '{"data":{"value":"bar"}}' \
    http://127.0.0.1:8200/v1/secret/baz

#echo \
#curl \
#    -H "X-Vault-Token: $root_token" \
#    -X LIST \
#    http://127.0.0.1:8200/v1/secret/

