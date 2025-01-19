sqlitemigrate Django command

TLDR: there is a Django command that will display the SQL that will run for any migration that has happened or will happen. There is also a `--backwards` flag that will show the rollback SQL

## Discovery
I learned about this while on a Djangonaut Space Reviewers session

## Explanation

The `sqlmigrate` Django command will show you what SQL will be run to update the database

## Example

running `python manage.py sqlmigrate auth 0002` will return

```bash
BEGIN;
--
-- Alter field name on permission
--
CREATE TABLE "new__auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(255) NOT NULL, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL);
INSERT INTO "new__auth_permission" ("id", "content_type_id", "codename", "name") SELECT "id", "content_type_id", "codename", "name" FROM "auth_permission";
DROP TABLE "auth_permission";
ALTER TABLE "new__auth_permission" RENAME TO "auth_permission";
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
COMMIT;
```

running `python manage.py sqlmigrate auth 0002 --backwards` will return

```bash
BEGIN;
--
-- Alter field name on permission
--
CREATE TABLE "new__auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(50) NOT NULL, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL);
INSERT INTO "new__auth_permission" ("id", "content_type_id", "codename", "name") SELECT "id", "content_type_id", "codename", "name" FROM "auth_permission";
DROP TABLE "auth_permission";
ALTER TABLE "new__auth_permission" RENAME TO "auth_permission";
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
COMMIT;
```

## Why It Matters

It can be helpful to determine what SQL commands are going to be run to update the database when you run the `migrate` Django command. In this specific case it was useful in troublehsooting what was happening for ticket [26739](https://code.djangoproject.com/ticket/26739)

## Source
[Space Reviewers Episode 3](https://www.youtube.com/watch?v=Z_OhCNd5RgM&t=387s)