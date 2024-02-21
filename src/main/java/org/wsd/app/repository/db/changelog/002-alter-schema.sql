--liquibase formatted sql

--changeset samlien:2
ALTER TABLE "budget"."item"  ALTER COLUMN item_name SET DATA TYPE varchar(500);
