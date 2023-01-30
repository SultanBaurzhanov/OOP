create table Aisle
(
    ID int not null,
    Clothes_And_Misc text not null,
    Color text not null,
    Size text not null,
    Type_Of_Clothes text not null
);
--создает таблицу с Вещами/Цветом/Размером/Типов вещи(что хотите) НЕ ТРОГАТЬ

insert into Aisle
values
(1, 'Sweater', 'White', 'M', 'Turtleneck'),
(2, 'Shirt', 'Grey', 'S', 'Turtleneck'),
(3, 'Shirt', 'White', 'X', 'Turtleneck')
(4, 'Trousers', 'Black', 'M', 'Styrophome')
(5, 'Shorts', 'Blue', 'XL', 'Styrophome')
(6, 'Coat', 'Black', 'S', 'Turtleneck')
(7, 'Jacket', 'Brown', 'XXL', 'Styrophome')
(8, 'Shirt', 'White', 'L', 'Turtleneck')
(9, 'Cardigan', 'Black', 'L', 'Styrophome')
(10, 'Shirt', 'Red', 'S', 'Turtleneck')
(11, 'Shirt', 'Blue', 'X', 'Turtleneck')
(12, 'Jeans', 'Grey', 'M', 'Styrophome')
(13, 'Sweater', 'Orange', 'L', 'Turtleneck')
(14, 'Shirt', 'Red', 'L', 'Turtleneck')
(15, 'Sweater', 'Black', 'XL', 'Styrophome');
--здесь все добавляете
--добавляет в пустую таблицу хар-ки как Вещь - свитер/Цвет - Белый/Размер - М/Тип - с воротником (последовательность важна)
--кстати нужно таблицу удалять каждый раз когда хотите новые данные внести после того как запустили прогу, тк старые данные наложятся на новые и будут копии (database > postgres@localhost > postgres > public > tables > удалите Aisle и запустите эту и первую функцию)
--если закончили в конце вместо запятой поставить ;

select * from Aisle;bhu 'Turtleneck';
--выводит опр строки с "Turtleneck"








