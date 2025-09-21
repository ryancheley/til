just modules

TLDR: you can organize your just commands into specific files and import them as modules into a main `justfile`

## Discovery

At DjanoCon US 2025 in Chicago while talking with Jeff Tripplett he had a just command with a syntax I had never seen before

```
just module-name::command
```

When I asked him about it he told me that it was a module for `just`

## Explanation

`just` modules are a feature that allows organization of justfiles into separate files, making it easier to manage complex build and automation tasks across larger projects.

## Example

```text
# justfile
mod database
mod deployment
mod testing

# Default recipe
default:
    @echo "Available modules: database, deployment, testing"
```

Then create separate justfiles for each module. For example, the database.just file might look like this

```text
# database.just
migrate:
    python manage.py migrate

backup:
    pg_dump mydb > backup.sql

restore file:
    psql mydb < {{file}}
```

You can then call these recipes in the terminal 

```bash
just database::migrate
just database::backup
just database::restore db_20250921
```
	
## Why It Matters

The idea of a "single file to rule them all" is great, but sometimes that file might be too big to reason about. just Groups can be  helpful, but you may want to start splitting items out based on specific use cases or for conditional imports. 

## Source
The [Just Programmer's Manual](https://just.systems/man/en/modules1190.html)