#!/bin/env bash

docker run --rm -it -p 9091:8080 \
--name registry-web \
--link registry-srv \
-e REGISTRY_URL=http://registry-srv:5000/v2 \
-e REGISTRY_NAME=localhost:5000 \
-e REGISTRY_TRUST_ANY_SSL=true \
-e REGISTRY_BASIC_AUTH="" \
-e REGISTRY_READONLY=false \
--network registry_default \
hyper/docker-registry-web