INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	billing_info	
)VALUES(
	1,
	'Joel',
	'Carter',
	'4242-4242-4242-4242 623 05/20'
);

INSERT INTO movie(
	movie_id,
	runtime	
)VALUES(
	1,
	90
);

INSERT INTO concession(
	concession_id,
	title,
	price	
)VALUES(
	1,
	'Large Popcorn',
	9.99
);

INSERT INTO showing(
	showing_id,
	movie_id	
)VALUES(
	1,
	1
);

INSERT INTO ticket(
	ticket_id,
	showing_id,
	customer_id,
	price
)VALUES(
	1,
	1,
	1,
	8.95
);

INSERT INTO inventory(
	inventory_id,
	concession_id,
	amount	
)VALUES(
	1,
	1,
	25
);

INSERT INTO snacks_purchase(
	snacks_purchase_id,
	customer_id,
	inventory_id,
	price	
)VALUES(
	1,
	1,
	1,
	9.99
);