CREATE TABLE cars (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  owner_id INTEGER,

  FOREIGN KEY(owner_id) REFERENCES human(id)
);

CREATE TABLE humans (
  id INTEGER PRIMARY KEY,
  fname VARCHAR(255) NOT NULL,
  lname VARCHAR(255) NOT NULL,
  house_id INTEGER,

  FOREIGN KEY(house_id) REFERENCES human(id)
);

CREATE TABLE houses (
  id INTEGER PRIMARY KEY,
  address VARCHAR(255) NOT NULL
);

INSERT INTO
  houses (id, address)
VALUES
  (1, "215 e 95th st"), (2, "2165 12th ave");

INSERT INTO
  humans (id, fname, lname, house_id)
VALUES
  (1, "Armin", "Ulrich", 1),
  (2, "Jack", "Jackson", 2),
  (3, "Nill", "Hetfield", 2),
  (4, "Homeless", "Human", NULL);

INSERT INTO
  cars (id, name, owner_id)
VALUES
  (1, "B.M.W", 1),
  (2, "Bugatti", 2),
  (3, "Ferrari", 3),
  (4, "VW", 3),
  (5, "Ford", NULL);
