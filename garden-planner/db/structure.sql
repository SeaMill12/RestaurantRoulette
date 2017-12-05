CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "gardens" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "garden_name" varchar, "user_id" varchar, "size_x" varchar, "size_y" varchar, "created_at" datetime, "updated_at" datetime, "plants" varchar);
CREATE TABLE "movies" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "rating" varchar, "description" text, "release_date" datetime, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "plants" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "plant_name" varchar, "plant_size" varchar, "description" text, "water_freq" integer, "plant_date" datetime, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar, "crypted_password" varchar, "password_salt" varchar, "persistence_token" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
INSERT INTO schema_migrations (version) VALUES ('20150809022253');

INSERT INTO schema_migrations (version) VALUES ('20171101052421');

