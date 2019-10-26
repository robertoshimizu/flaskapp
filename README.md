# Flask App

This application is built on the Python Flask framework and is the focus for the "Python Flask From Scratch" YouTube series

To start, clone the git, and build your image using docker compose

```
docker-compose up
```
Then open a browser with localhost:5000

Enjoy it.

## About MySQL

It has been replaced by MariaDB

Go inside the docker:
```
docker exec -it myflaskapp bash
```
Now install MariaDB

```
apt-get install -y default-mysql-server default-libmysqlclient-dev
mysqladmin --version
```

If there is at anytime during running an socket error, initialize MariaDB

```
/etc/init.d/mysql restart 
```

For reference: https://www.tutorialspoint.com/mariadb/mariadb_installation.htm 

## CREATE DB

Go inside MariaDB:
```
mysql –u root –p 
```
Password: admin 

```
CREATE DATABASE myflaskapp; 
USE myflaskapp; 
CREATE TABLE users(id INT(11) AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100), email VARCHAR(100),username VARCHAR(30), password VARCHAR(100), register_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP); 
SHOW TABLES; 
DESCRIBE users; 
CREATE TABLE articles(id INT(11) AUTO_INCREMENT PRIMARY KEY, title VARCHAR(255), author VARCHAR(100), body TEXT, create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
DESCRIBE users; 
```

Useful Query to check it out
```
SELECT * FROM articles;
SELECT * FROM users; 
```