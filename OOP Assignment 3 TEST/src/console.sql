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
(3, 'Sweater', 'Black', 'XL', 'Styrophome');
--здесь все добавляете
--добавляет в пустую таблицу хар-ки как Вещь - свитер/Цвет - Белый/Размер - М/Тип - с воротником (последовательность важна)
--кстати нужно таблицу удалять каждый раз когда хотите новые данные внести после того как запустили прогу, тк старые данные наложятся на новые и будут копии (database > postgres@localhost > postgres > public > tables > удалите Aisle и запустите эту и первую функцию)
--если закончили в конце вместо запятой поставить ;

select * from Aisle;
--выводит в строку всю таблицу

select color, Type_Of_Clothes from Aisle;
--выводит определенный столбец, НЕ СТРОКУ (может сколько угодно столбцов вывести)

select * from Aisle where Type_Of_Clothes = 'Turtleneck';
--выводит опр строки с "Turtleneck"








