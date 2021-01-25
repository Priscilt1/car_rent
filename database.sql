CREATE TABLE "customers" (
  "id" SERIAL PRIMARY KEY,
  "name" text NOT NULL,
  "birth" integer,
  "habilitation_number" int,
  "cpf" int,
  "phone" text,
  "email" int,
  "created_at" timestamp DEFAULT (now())
);

CREATE TABLE "agencies" (
  "id" SERIAL PRIMARY KEY,
  "name" text NOT NULL,
  "phone" integer,
  "email" text,
  "created_at" timestamp DEFAULT (now())
);

CREATE TABLE "addresses" (
  "agencie_id" int PRIMARY KEY,
  "street" text,
  "number" integer,
  "neighborhood" text,
  "city" text,
  "zip_code" integer
);

CREATE TABLE "cars" (
  "id" SERIAL PRIMARY KEY,
  "model_id" integer,
  "name" text,
  "color" text,
  "plaque" integer
);

CREATE TABLE "models" (
  "id" SERIAL PRIMARY KEY,
  "nome" text,
  "mark" text,
  "fuel" integer,
  "motor" integer,
  "gearbox" integer
);

CREATE TABLE "orders" (
  "id" SERIAL PRIMARY KEY,
  "customer_id" integer,
  "agencie_id" integer,
  "car_id" integer,
  "created_at" timestamp DEFAULT (now())
);

CREATE TABLE "cars_orders" (
  "id" SERIAL PRIMARY KEY,
  "car_id" integer,
  "order_id" integer
);

ALTER TABLE "cars" ADD FOREIGN KEY ("model_id") REFERENCES "models" ("id");

ALTER TABLE "orders" ADD FOREIGN KEY ("customer_id") REFERENCES "customers" ("id");

ALTER TABLE "addresses" ADD FOREIGN KEY ("agencie_id") REFERENCES "agencies" ("id");

ALTER TABLE "orders" ADD FOREIGN KEY ("agencie_id") REFERENCES "agencies" ("id");

ALTER TABLE "cars_orders" ADD FOREIGN KEY ("car_id") REFERENCES "cars" ("id");

ALTER TABLE "cars_orders" ADD FOREIGN KEY ("order_id") REFERENCES "orders" ("id");
