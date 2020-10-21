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

CREATE TABLE "showing" (
	"showing_id" SERIAL,
	"movie_id" INTEGER NOT NULL,
	"time" TIME DEFAULT CURRENT_TIME,
	"date" DATE DEFAULT CURRENT_DATE,
	PRIMARY KEY ("showing_id"),
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE "ticket" (
	"ticket_id" SERIAL,
	"showing_id" INTEGER NOT NULL,
	"customer_id" INTEGER NOT NULL,
	"cost" NUMERIC(3,2),
	PRIMARY KEY ("ticket_id"),
	FOREIGN KEY(showing_id) REFERENCES showing(showing_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE "inventory" (
	"inventory_id" SERIAL,
	"concession_id" INTEGER NOT NULL,
	"amount" INTEGER,
	PRIMARY KEY ("inventory_id"),
	FOREIGN KEY(concession_id) REFERENCES concession(concession_id)	
);

CREATE TABLE "snacks_purchase" (
	"snacks_purchase_id" SERIAL,
	"customer_id" INTEGER NOT NULL,
	"inventory_id" INTEGER NOT NULL,
	"price" NUMERIC(3,2),
	PRIMARY KEY ("snacks_purchase_id"),
	FOREIGN KEY(inventory_id) REFERENCES inventory(inventory_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

