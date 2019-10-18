CREATE DATABASE yeticave
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;

USE yeticave;

CREATE TABLE users (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    email       CHAR(128) NOT NULL UNIQUE,
    password    CHAR(64) NOT NULL,
    contacts    CHAR(128),
    dt_add      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    good_id     INT,
    bet_id     INT
);

CREATE TABLE categories (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    name        CHAR(128) NOT NULL,
    sym_code    CHAR(128) NOT NULL
);

CREATE TABLE goods (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    name        CHAR(128) NOT NULL,
    description CHAR(128) NOT NULL,
    price       INT(100)  NOT NULL,
    url         CHAR(128) NOT NULL,
    dt_add      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    dt_end      TIMESTAMP,
    step        INT       NOT NULL,
    author_id   INT       NOT NULL,
    win_id      INT,
    cat_id      INT       NOT NULL
);

CREATE TABLE bets (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    price       INT(100) NOT NULL,
    dt_add      TIMESTAMP,
    user_id     INT NOT NULL,
    good_id     INT NOT NULL
);

CREATE INDEX sym_code ON categories(sym_code);

CREATE INDEX category ON goods(cat_id);
CREATE INDEX winner ON goods(win_id);
CREATE INDEX creator ON goods(author_id);
CREATE INDEX price ON goods(price);
CREATE INDEX creation_date ON goods(dt_add);
CREATE INDEX completion_date ON goods(dt_end);

CREATE INDEX creator ON bets(user_id);
CREATE INDEX lot ON bets(good_id);
CREATE INDEX amount ON bets(dt_add);
