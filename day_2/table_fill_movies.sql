INSERT INTO movie(
	movie_id,
	movie_title,
	genre,
	duration_minutes
) VALUES(
	1,
	'Return to Pokemon Cave',
	'Fantasy',
	120
)
;

INSERT INTO ticket(
	ticket_id,
	ticket_price,
	movie_id
)VALUES(
	1,
	6.50,
	1
);

INSERT INTO customer(
	cust_id,
	first_name,
	last_name,
	ticket_id
)VALUES(
	1,
	'Brad',
	'Stover',
	1
);

INSERT INTO concession(
	concession_id,
	item_name,
	item_price,
	cust_id,
)VALUES(
	1,
	'Popcorn',
	5.99,
	1
);

