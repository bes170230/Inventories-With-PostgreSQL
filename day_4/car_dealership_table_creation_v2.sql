CREATE TABLE IF NOT EXISTS customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS salesperson(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS parts_inventory(
	parts_inventory_id SERIAL PRIMARY KEY,
	name_of_part VARCHAR(50),
	price NUMERIC(6,2),
	quantity NUMERIC(3)
);

CREATE TABLE IF NOT EXISTS mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS buyer_invoice (
	buyer_invoice_id SERIAL PRIMARY KEY,
	date_of_purchase VARCHAR(50),
	amount NUMERIC(8,2),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	car_id INTEGER NOT NULL,
	FOREIGN KEY(car_id) REFERENCES car(car_id)
);

CREATE TABLE IF NOT EXISTS seller_invoice (
	seller_invoice_id SERIAL PRIMARY KEY,
	date_of_purchase VARCHAR(30),
	amount NUMERIC(8,2),
	salesperson_id INTEGER NOT NULL,
	FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
	car_id INTEGER NOT NULL,
	FOREIGN KEY(car_id) REFERENCES car(car_id)
);

CREATE TABLE IF NOT EXISTS car (
	car_id SERIAL PRIMARY KEY,
	make VARCHAR(30),
	model VARCHAR(30),
	year_ NUMERIC(4),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE IF NOT EXISTS service (
	service_id SERIAL PRIMARY KEY,
	type_of_service VARCHAR(30),
	service_total NUMERIC(6,2),
	car_id INTEGER NOT NULL,
	FOREIGN KEY(car_id) REFERENCES car(car_id)
);
