CREATE TABLE IF NOT EXISTS movie(
	movie_id SERIAL PRIMARY KEY,
	movie_title VARCHAR(100),
	genre VARCHAR(100),
	duration_minutes INTEGER
);

CREATE TABLE IF NOT EXISTS ticket(
	ticket_id SERIAL PRIMARY KEY,
	ticket_price NUMERIC(5,2),
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE IF NOT EXISTS customer(
	cust_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	ticket_id INTEGER NOT NULL,
	FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id)
);

CREATE TABLE IF NOT EXISTS concession(
	concession_id SERIAL PRIMARY KEY,
	item_name VARCHAR(100),
	item_price NUMERIC(5,2),
	cust_id INTEGER NOT NULL,
	FOREIGN KEY(cust_id) REFERENCES customer(cust_id)
);