FROM  jboss/keycloak:12.0.4

ADD hub88 /opt/jboss/keycloak/themes/hub88
ADD disable-theme-cache.cli /opt/jboss/startup-scripts/disable-theme-cache.cli

ENTRYPOINT ["/opt/jboss/tools/docker-entrypoint.sh", "-b", "0.0.0.0", "-Dkeycloak.profile.feature.token_exchange=enabled", "-Dkeycloak.profile.feature.admin_fine_grained_authz=enabled"]
