CREATE DATABASE yeticave
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;
    
USE yeticave;

CREATE TABLE users (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    email       CHAR(128) NOT NULL UNIQUE,
    password    CHAR(64),
    dt_add      TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categories (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    name        CHAR(128),
    sym_code    CHAR(128) NOT NULL,
);