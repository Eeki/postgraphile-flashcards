# Use env variables from .env file
export $(grep -v '#.*' .env | xargs)

# Run postgraphile
npx postgraphile \
 -c 'postgres://learn_postgraphile:secret_password@localhost/flashcards' \
 --schema learn \
 --append-plugins @graphile-contrib/pg-simplify-inflector,postgraphile-plugin-connection-filter \
 --enhance-graphiql \
 --allow-explain \
 --watch \
 --owner-connection "postgres://$POSTGRES_USER:$POSTGRES_PASSWORD@localhost/flashcards" \
 --default-role learn_anonymous \
 --jwt-token-identifier learn.jwt \
 --jwt-secret secret_for_jwts
