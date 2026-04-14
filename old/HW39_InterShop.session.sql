-- CREATE TABLE item_categories (
--     id SERIAL,
--     title VARCHAR (100) NOT NULL UNIQUE,
--     description TEXT,
--     PRIMARY KEY(id)
-- );

-- CREATE TABLE item_types (
--     id SERIAL,
--     title VARCHAR (100) NOT NULL UNIQUE,
--     description TEXT,
--     PRIMARY KEY(id)
-- );

-- CREATE TABLE brands (
--     id SERIAL,
--     title VARCHAR (100) NOT NULL UNIQUE,
--     description TEXT,
--     PRIMARY KEY(id)
-- );

-- CREATE TABLE customers (
--     id SERIAL,
--     name_customers VARCHAR (100) NOT NULL,
--     email VARCHAR(50)  UNIQUE,
--     PRIMARY KEY(id)
-- );

-- CREATE TABLE stores (
--     id SERIAL,
--     title VARCHAR (100) NOT NULL UNIQUE,
--     description TEXT,
--     PRIMARY KEY(id)
-- );

-- CREATE TABLE models (
--     id SERIAL,
--     title VARCHAR (100) NOT NULL UNIQUE,
--     description TEXT,
--     brand_id INT,
--     PRIMARY KEY(id),
--     CONSTRAINT f_key_brand FOREIGN KEY(brand_id) REFERENCES brands(id)
-- );


-- CREATE TABLE orders (
--     id SERIAL,
--     code VARCHAR (20) UNIQUE,
--     order_date DATE NOT NULL,
--     customer_id INT NOT NULL,
--     amount INT NOT NULL,
--     paid BOOLEAN NOT NULL DEFAULT FALSE,
--     PRIMARY KEY(id),
--     CONSTRAINT f_key_customer FOREIGN KEY(customer_id) REFERENCES customers(id)
-- );


-- CREATE TABLE items (
--     id SERIAL,
--     price NUMERIC(10,2) NOT NULL,
--     amount INT NOT NULL,
--     categories_id INT,
--     type_id INT,
--     brand_id INT,
--     model_id INT,
--     store_id INT,
--     PRIMARY KEY(id),
--     CONSTRAINT f_key_categories FOREIGN KEY(categories_id) REFERENCES item_categories(id),
--     CONSTRAINT f_key_type FOREIGN KEY(type_id) REFERENCES item_types(id),
--     CONSTRAINT f_key_brand FOREIGN KEY(brand_id) REFERENCES brands(id),
--     CONSTRAINT f_key_model FOREIGN KEY(model_id) REFERENCES models(id),
--     CONSTRAINT f_key_store FOREIGN KEY(store_id) REFERENCES stores(id)
-- );

-- CREATE TABLE item_order (
--     item_id INT,
--     order_id INT,
--     CONSTRAINT f_key_item FOREIGN KEY(item_id) REFERENCES items(id),
--     CONSTRAINT f_key_order FOREIGN KEY(order_id) REFERENCES orders(id)
-- );

-- ALTER TABLE items DROP CONSTRAINT f_key_brand;
-- ALTER TABLE items DROP COLUMN brand_id;


