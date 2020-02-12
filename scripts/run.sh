docker run --rm --name keycloak-local \
-p 8080:8080 -e KEYCLOAK_PASSWORD="admin" \
-e KEYCLOAK_USER="admin" -e DB_DATABASE="kloak" -e DB_USER="postgres" -e DB_PASSWORD="postgres" -e DB_ADDR="172.17.0.2" -e DB_PORT=5432 -e DB_VENDOR=postgres -e JDBC_PARAMS='connectTimeout=30' \
-v $HOME/Projects/kloak-theme/standalone.xml:/opt/jboss/keycloak/standalone/configuration/standalone-ha.xml \
-v $HOME/Projects/kloak-theme/standalone.xml:/opt/jboss/keycloak/standalone/configuration/standalone.xml \
-v $HOME/Projects/kloak-theme/themes/hub88:/opt/jboss/keycloak/themes/hub88 \
jboss/keycloak


docker cp themes/hub88 keycloak-local:/opt/jboss/keycloak/themes/hub88
docker cp keycloak-local:/opt/jboss/keycloak/standalone/configuration/standalone.xml .