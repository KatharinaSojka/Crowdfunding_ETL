DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS campaign;

CREATE TABLE category (
	category_id varchar(5) PRIMARY KEY NOT NULL,
	category varchar(20) NOT NULL
);

CREATE TABLE subcategory (
	subcategory_id varchar(10) PRIMARY KEY NOT NULL,
	subcategory varchar(30) NOT NULL
);

CREATE TABLE contacts (
	contact_id int PRIMARY KEY NOT NULL,
	first_name varchar(30) NOT NULL,
	last_name varchar(30) NOT NULL,
	email varchar(100)
);

CREATE TABLE campaign (
	cf_id int PRIMARY KEY NOT NULL,
	contact_id int,
	company_name varchar(50),
	description varchar(100),
	goal float8,
	pledged float8,
	outcome varchar(15),
	backers_count int,
	country char(2),
	currency char(3),
	launch_date date,
	end_date date,
	category_id varchar(5),
	subcategory_id varchar(10),
	FOREIGN KEY (contact_id) references contacts(contact_id),
	FOREIGN KEY (category_id) references category(category_id),
	FOREIGN KEY (subcategory_id) references subcategory(subcategory_id)
);