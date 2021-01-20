#!/usr/bin/env bash

docker run --rm --name keycloak-local \
-p 8080:8080 -e KEYCLOAK_USER=1 -e KEYCLOAK_PASSWORD=1 \
-v $PWD/hub88:/opt/jboss/keycloak/themes/hub88 \
-v $PWD/standalone.xml:/opt/jboss/keycloak/standalone/configuration/standalone.xml \
-v $PWD/standalone-ha.xml:/opt/jboss/keycloak/standalone/configuration/standalone-ha.xml \
-e KEYCLOAK_DEFAULT_THEME=hub88 \
jboss/keycloak
