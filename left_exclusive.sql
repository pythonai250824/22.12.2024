-- select * from cars;
-- select * from drivers;
-- select drivers.*, cars.model as car_model, cars.color as car_color from drivers
-- left join cars ON drivers.car_id = cars.car_id
-- where drivers.car_id IS NULL

select drivers.*, cars.model as car_model, cars.color as car_color from drivers
left JOIN cars ON drivers.car_id = cars.car_id
where drivers.car_id is null
