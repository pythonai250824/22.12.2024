select drivers.*, cars.model as car_model, cars.color as car_color from drivers
full join cars ON drivers.car_id = cars.car_id
where drivers.driver_id is null or cars.car_id is null