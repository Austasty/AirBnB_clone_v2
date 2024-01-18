-- this script prepares an MySQL server
-- create testing database with the name hbnb_test_db
CREATE DATABASE IF NOT EXISTS hbnb_test_db;
-- creation of new user named : hbnb_test all privileges on the db hbnb_test_db
-- creates with the password : hbnb_test_pwd if it dosen't exist
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';
-- granting the SELECTED privileges to the user hbnb_test on the db performance_schema
GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';
FLUSH PRIVILEGES;
-- grants all privileges on hbnb_test_db to the new user
GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost';
FLUSH PRIVILEGES;
