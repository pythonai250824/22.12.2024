-- select * from cars;
-- select * from drivers;
select drivers.*, cars.model as car_model, cars.color as car_color from drivers
inner join cars ON drivers.car_id = cars.car_id
