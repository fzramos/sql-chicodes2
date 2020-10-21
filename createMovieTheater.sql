CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "movie" (
  "movie_id" SERIAL,
  "length" INTEGER,
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "concession" (
  "concession_id" SERIAL,
  "name" VARCHAR(100),
  "price" NUMERIC(3,2),
  PRIMARY KEY ("concession_id")
);

CREATE TABLE "ticket" (
  "ticket_id" SERIAL,
  "showing_id" INTEGER,
  "customer_id" INTEGER,
  "cost" NUMERIC(3,2),
  PRIMARY KEY ("ticket_id")
);

CREATE TABLE "inventory" (
  "inventory_id" SERIAL,
  "concession_id" INTEGER,
  "amount" INTEGER,
  PRIMARY KEY ("inventory_id")
);

CREATE TABLE "snacks_purchase" (
  "snacks_purchase_id" SERIAL,
  "customer_id" INTEGER,
  "inventory_id" INTEGER,
  "price" NUMERIC(3,2),
  PRIMARY KEY ("snacks_purchase_id")
);

CREATE TABLE "showing" (
  "showing_id" SERIAL,
  "movie_id" INTEGER,
  "date" TIME,
  "time" DATE,
  PRIMARY KEY ("showing_id")
);

