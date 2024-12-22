CREATE TABLE drivers (
    driver_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
	car_id INTEGER UNIQUE, -- 1:1 without unique 1:n
	FOREIGN KEY (car_id) REFERENCES cars(car_id)
);