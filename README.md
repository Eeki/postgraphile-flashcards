# postgraphile-flashcards
Flashcard application created by using postgraphile

### Resources:
This demo has been created by following this excellent tutorial: https://www.youtube.com/watch?v=eDZO8z1qw3k&t=1s

### How to install:
- Run `npm install`
- Create `.env` file (see example.env as example)
- Start the postgres server by running `docker-compose up`
- Run migrations to postgres by running: `npx db-migrate up`
- Start the server by running `./server.sh`

### How to dev:
- Create new migration files using command: `npx db-migrate create <migration_name>`
- Add some content to the generated up and down migration files.
- Apply the migration by using command: `npx db-migrate up`
- Repeat
