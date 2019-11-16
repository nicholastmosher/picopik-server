CREATE TABLE instances(
	id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	local_domain TEXT NOT NULL,
	public_domain TEXT NOT NULL,
	name TEXT NOT NULL,
	local BOOLEAN NOT NULL DEFAULT False,
	blocked BOOLEAN NOT NULL DEFAULT False
);

CREATE TABLE users(
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(25) NOT NULL,
    email VARCHAR(254) NOT NULL,
    password TEXT NOT NULL,
    bio VARCHAR(500),
    image TEXT,
    role int NOT NULL DEFAULT 0,
	display_name VARCHAR(25) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_online TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    instance_id INTEGER NOT NULL,
    FOREIGN KEY fk_instance_id(instance_id) REFERENCES instances(id) ON DELETE CASCADE
);