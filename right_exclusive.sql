select drivers.*, cars.model as car_model, cars.color as car_color from drivers
right join cars ON drivers.car_id = cars.car_id
where driver_id is NULL