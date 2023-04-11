CREATE DATABASE IF NOT EXISTS blog_post DEFAULT CHARACTER SET utf8;
USE blog_post;

CREATE TABLE IF NOT EXISTS categories
(id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
name_category VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS tags
(id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
name_tag VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS users
(id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
login VARCHAR(30) NOT NULL,
password VARCHAR(32) NOT NULL,
nickname VARCHAR(40) NOT NULL,
email VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS posts
(id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
tittle VARCHAR(150) NOT NULL,
post_date TIMESTAMP,
content TEXT NOT NULL,
status CHAR(8) NULL DEFAULT "active",
user_id INTEGER NOT NULL,
category_id INTEGER NOT NULL,
FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE NO ACTION 
ON UPDATE CASCADE,
FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE NO ACTION 
ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS comments
(id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
comment TEXT NOT NULL,
user_id INTEGER NOT NULL,
post_id INTEGER NOT NULL,
FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE NO ACTION 
ON UPDATE NO ACTION,
FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE NO ACTION 
ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS posts_tags
(id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
post_id INTEGER NOT NULL,
tag_id INTEGER NOT NULL,
FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE NO ACTION 
ON UPDATE NO ACTION,
FOREIGN KEY (tag_id) REFERENCES tags(id) ON DELETE NO ACTION 
ON UPDATE NO ACTION
);





