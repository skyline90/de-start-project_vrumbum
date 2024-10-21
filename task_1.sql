/*добавьте сюда запрос для решения задания 1*/
-- 1. Напишите запрос, который выведет процент моделей машин, у которых нет параметра gasoline_consumption.

SELECT 
    ROUND(
        (SELECT COUNT(*) FROM car_shop.cars WHERE gasoline_consumption IS NULL) * 100.0 / 
        (SELECT COUNT(*) FROM car_shop.cars), 
        2
    ) AS percent_no_gasoline_consumption;
