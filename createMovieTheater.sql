CREATE TABLE "customer" (
  "customer_id" SERIAL,
  "ticket_id" INTEGER,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "snacks_purchase_id" INTEGER,
  PRIMARY KEY ("customer_id")
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

CREATE TABLE "movie" (
  "movie_id" SERIAL,
  "showing_id" INTEGER,
  "length" INTEGER,
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "snacks_purchase" (
  "snacks_purchase_id" SERIAL,
  "customer_id" INTEGER,
  "inventory_id" INTEGER,
  "price" NUMERIC(3,2),
  PRIMARY KEY ("snacks_purchase_id")
);

CREATE TABLE "concession" (
  "concession_id" SERIAL,
  "name" VARCHAR(100),
  "price" NUMERIC(3,2),
  "inventory_id" INTEGER,
  PRIMARY KEY ("concession_id")
);

CREATE TABLE "showing" (
  "showing_id" SERIAL,
  "movie_id" INTEGER,
  "date" TIME,
  "time" DATE,
  PRIMARY KEY ("showing_id")
);