Self-hosted Atuin sync server

TLDR: run your own Atuin sync server with Docker Compose and Postgres, then set `sync_address`

This tip comes from my post [Atuin - The Magical Shell Tool](https://ryancheley.com/2026/10/29/atuin-the-magical-shell-tool/#:~:text=I%20decided%20that%20setting%20up%20my%20own%20atuin%20sync%20server) on ryancheley.com.

## Discovery

While reading through the Atuin docs I went down a rabbit hole and set up my own sync server in [Coolify](https://coolify.io/)

## Explanation

Atuin's sync server is a single container backed by Postgres. Once it's running, point your clients at it with `sync_address` (it defaults to `https://api.atuin.sh`).

One limitation: if you want Atuin's AI features with a self-hosted sync server you also need a [self-hosted AI server](https://docs.atuin.sh/latest/ai/self-hosting/).

## Example

`docker-compose.yml` (the database credentials come from environment variables)

```yaml
services:
  atuin:
    restart: always
    image: ghcr.io/atuinsh/atuin:62d5bad
    command: start
    expose:
      - 8888
    environment:
      ATUIN_HOST: "0.0.0.0"
      ATUIN_OPEN_REGISTRATION: "true"
      ATUIN_DB_URI: postgres://${ATUIN_DB_USERNAME}:${ATUIN_DB_PASSWORD}@db/${ATUIN_DB_NAME}
      RUST_LOG: info,atuin_server=debug
    depends_on:
      db:
        condition: service_healthy
  db:
    image: postgres:18
    restart: unless-stopped
    healthcheck:
      test: ["CMD-SHELL", "pg_isready -U ${ATUIN_DB_USERNAME} -d ${ATUIN_DB_NAME}"]
      interval: 5s
      timeout: 5s
      retries: 10
    volumes:
      - "atuin-db:/var/lib/postgresql"
    environment:
      POSTGRES_USER: ${ATUIN_DB_USERNAME}
      POSTGRES_PASSWORD: ${ATUIN_DB_PASSWORD}
      POSTGRES_DB: ${ATUIN_DB_NAME}

volumes:
  atuin-db:
```

Then in `~/.config/atuin/config.toml` on each client

```toml
sync_address = "https://atuin.example.com"
```

Once every machine has registered, consider setting `ATUIN_OPEN_REGISTRATION` to `"false"`.

## Why It Matters

Your shell history stays on infrastructure you control.

## Source

The [Atuin config docs](https://docs.atuin.sh/latest/configuration/config/#sync_address)
