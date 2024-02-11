DROP TABLE IF EXISTS topping;
DROP TABLE IF EXISTS pizza;
DROP TABLE IF EXISTS pizza_combos;



CREATE TABLE pizza (
    name TEXT UNIQUE NOT NULL
);

CREATE TABLE topping (
    name TEXT UNIQUE NOT NULL
);

CREATE TABLE pizza_combos (
    pizza TEXT NOT NULL,
    topping TEXT NOT NULL,
    PRIMARY KEY (pizza, topping),
    FOREIGN KEY (pizza) REFERENCES pizza(name),
    FOREIGN KEY (topping) REFERENCES topping(name)
);