select drivers.*, cars.model as car_model, cars.color as car_color from drivers
full join cars ON drivers.car_id = cars.car_id