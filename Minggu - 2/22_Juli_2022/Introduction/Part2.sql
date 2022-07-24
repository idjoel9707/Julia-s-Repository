-- create database
create database alta_online_shop;

-- create table user
CREATE TABLE user(
    id INT(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    status INT(6) NOT NULL,
    tanggal_lahir DATE,
    gender VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- create product , product_type, product description, operator
CREATE TABLE product(
    id INT(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama varchar(255) NOT NULL,
    product_type_id INT(6) NOT NULL,
    operator_id INT(6) NOT NULL,
    product_desc_id INT(6) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (product_type_id) REFERENCES product_type(id),
    FOREIGN KEY (operator_id) REFERENCES operator(id),
    FOREIGN KEY (product_desc_id) REFERENCES product_desc(id)
);

CREATE TABLE product_type(
    id INT(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama varchar(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE operator(
    id INT(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama varchar(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE product_desc(
    id INT(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    description varchar(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- create table payment method
CREATE TABLE payment_method(
    id INT(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    method varchar(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- create table transaction, detail transaction
CREATE TABLE transaction(
    id INT(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT(6) NOT NULL,
    payment_method_id INT(6),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (payment_method_id) REFERENCES payment_method(id)
);

CREATE TABLE detail_transaction(
    id INT(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    transaction_id INT(6) NOT NULL,
    product_id INT(6) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (transaction_id) REFERENCES transaction(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);