CREATE TABLE users(
	id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(200) not null,
	password VARCHAR(200) not null,
	fname VARCHAR(200) not null,
	lname VARCHAR(200) not null,
	date_created DATETIME DEFAULT CURRENT_TIMESTAMP,
	date_edited DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE clients(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(250) not null,
	email VARCHAR(250) not null,
	contact_number VARCHAR(250),
	address VARCHAR(250)
);

CREATE TABLE platforms(
	id INT PRIMARY KEY AUTO_INCREMENT,
	platform VARCHAR(250),
	date_created DATETIME DEFAULT CURRENT_TIMESTAMP,
	date_edited DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE projects(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(250) not null,
	platform_id INT(100) not null,
	client_id INT(100) not null,
	cost INT(100) not null,
	cost_received INT(100) not null,
	status VARCHAR(250) not null DEFAULT 'Ongoing',
	date_created DATETIME DEFAULT CURRENT_TIMESTAMP,
	date_edited DATETIME DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY(platform_id) REFERENCES platforms(id),
	FOREIGN KEY(client_id) REFERENCES clients(id)
);

CREATE TABLE project_notes(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(250) not null,
	content text not null,
	project_id INT(100),
	FOREIGN KEY(project_id) REFERENCES projects(id)
);