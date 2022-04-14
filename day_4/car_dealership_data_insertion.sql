INSERT INTO salesperson(
	salesperson_id,
	first_name,
	last_name
) VALUES(
	1,
	'Brad',
	'Stover'
);
INSERT INTO salesperson(
	salesperson_id,
	first_name,
	last_name
) VALUES(
	2,
	'Roger',
	'Aaron'
);
INSERT INTO parts_inventory(
	parts_inventory_id,
	name_of_part,
	price,
	quantity
)VALUES(
	1,
	'Engine',
	'700.00',
	1
);
INSERT INTO parts_inventory(
	parts_inventory_id,
	name_of_part,
	price,
	quantity
)VALUES(
	2,
	'Exhaust pipe',
	'300.00',
	1
);
INSERT INTO mechanic(
	mechanic_id,
	first_name,
	last_name
)VALUES(
	1,
	'Roger',
	'Smith'
);
INSERT INTO mechanic(
	mechanic_id,
	first_name,
	last_name
)VALUES(
	2,
	'Bradford',
	'Bradley'
);
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)VALUES(
	1,
	'Stony',
	'McWhite',
	'300 Newfound Ln',
	4333-3333-4444-3343
);
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)VALUES(
	2,
	'Leanne',
	'Smith',
	'200 Ardvark Ln',
	8372-3442-9998-3777
);
INSERT INTO car(
	car_id,
	make,
	model,
	year_,
	customer_id
)VALUES(
	1,
	'Honda',
	'Accord',
	1999,
	1
);
INSERT INTO car(
	car_id,
	make,
	model,
	year_,
	customer_id
)VALUES(
	2,
	'Porsche',
	'Turbo',
	2001,
	2
);
INSERT INTO service(
	service_id,
	type_of_service,
	service_total,
	car_id
)VALUES(
	1,
	'Cleaning',
	50.00,
	1
);
INSERT INTO service(
	service_id,
	type_of_service,
	service_total,
	car_id
)VALUES(
	2,
	'Oil change',
	60.00,
	2
);
INSERT INTO buyer_invoice(
	buyer_invoice_id,
	date_of_purchase,
	amount,
	customer_id,
	car_id
)VALUES(
	1,
	'5-20-19',
	19000.00,
	1,
	1
);
INSERT INTO buyer_invoice(
	buyer_invoice_id,
	date_of_purchase,
	amount,
	customer_id,
	car_id
)VALUES(
	2,
	'9-18-21',
	40000.00,
	2,
	2
);
INSERT INTO seller_invoice(
	seller_invoice_id,
	date_of_purchase,
	amount,
	salesperson_id,
	car_id
)VALUES(
	1,
	'5-20-19',
	19000.00,
	1,
	1
);
INSERT INTO seller_invoice(
	seller_invoice_id,
	date_of_purchase,
	amount,
	salesperson_id,
	car_id
)VALUES(
	2,
	'8-18-21',
	50000.00,
	2,
	2
);