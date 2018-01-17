CREATE TABLE address(
			address_id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
            address VARCHAR(255),
            address2 VARCHAR(255),
            district VARCHAR(255),
            city_id INTEGER,
            postal_code INTEGER,
            phone INTEGER,
            location BLOB,
            last_update TIMESTAMP
);