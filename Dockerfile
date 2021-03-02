FROM  jboss/keycloak:12.0.2

ADD hub88 /opt/jboss/keycloak/themes/hub88

ENTRYPOINT ["/opt/jboss/tools/docker-entrypoint.sh", "-b", "0.0.0.0", "-Dkeycloak.profile.feature.token_exchange=enabled", "-Dkeycloak.profile.feature.admin_fine_grained_authz=enabled"]