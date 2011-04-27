CREATE TABLE "admins" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(128) DEFAULT '' NOT NULL, "password_salt" varchar(255) DEFAULT '' NOT NULL, "sign_in_count" integer DEFAULT 0, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "failed_attempts" integer DEFAULT 0, "unlock_token" varchar(255), "locked_at" datetime, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "articles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "title" varchar(255), "content" text, "created_at" datetime, "updated_at" datetime, "contributor_id" int, "category_id" int, "visits" int, "youtube_link" varchar(255), "user_id" int, "published" boolean);
CREATE TABLE "authors" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(128) DEFAULT '' NOT NULL, "password_salt" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "remember_token" varchar(255), "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "categories" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "commenter" varchar(255), "body" text, "article_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "contributors" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "contributor" varchar(255), "bio" text, "created_at" datetime, "updated_at" datetime, "avatar_file_name" varchar(255), "avatar_content_type" varchar(255), "avatar_file_size" integer, "avatar_updated_at" datetime);
CREATE TABLE "pages" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "content" text, "created_at" datetime, "updated_at" datetime, "avatar_file_name" varchar(255), "avatar_content_type" varchar(255), "avatar_file_size" integer, "avatar_updated_at" datetime);
CREATE TABLE "roles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "roles_users" ("role_id" integer, "user_id" integer);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(128) DEFAULT '' NOT NULL, "password_salt" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "remember_token" varchar(255), "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime, "updated_at" datetime, "bio" text, "name" varchar(255), "avatar_file_name" varchar(255), "avatar_content_type" varchar(255), "avatar_file_size" integer, "avatar_updated_at" datetime);
CREATE UNIQUE INDEX "index_authors_on_email" ON "authors" ("email");
CREATE UNIQUE INDEX "index_authors_on_reset_password_token" ON "authors" ("reset_password_token");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20110108224122');

INSERT INTO schema_migrations (version) VALUES ('20110106200059');

INSERT INTO schema_migrations (version) VALUES ('20110108150112');

INSERT INTO schema_migrations (version) VALUES ('20110108225540');

INSERT INTO schema_migrations (version) VALUES ('20110110161507');

INSERT INTO schema_migrations (version) VALUES ('20110110174928');

INSERT INTO schema_migrations (version) VALUES ('20110113173754');

INSERT INTO schema_migrations (version) VALUES ('20110122110228');

INSERT INTO schema_migrations (version) VALUES ('20110123104128');

INSERT INTO schema_migrations (version) VALUES ('20110205132454');

INSERT INTO schema_migrations (version) VALUES ('20110213125657');

INSERT INTO schema_migrations (version) VALUES ('20110219122735');

INSERT INTO schema_migrations (version) VALUES ('20110308180659');

INSERT INTO schema_migrations (version) VALUES ('20110308221445');

INSERT INTO schema_migrations (version) VALUES ('20110330165243');

INSERT INTO schema_migrations (version) VALUES ('20110330175044');

INSERT INTO schema_migrations (version) VALUES ('20110330175134');

INSERT INTO schema_migrations (version) VALUES ('20110413154335');

INSERT INTO schema_migrations (version) VALUES ('20110413160856');

INSERT INTO schema_migrations (version) VALUES ('20110413162029');

INSERT INTO schema_migrations (version) VALUES ('20110422191110');

INSERT INTO schema_migrations (version) VALUES ('20110425171707');