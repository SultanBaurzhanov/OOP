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
(3, 'Shirt', 'White', 'X', 'Turtleneck'),
(4, 'Trousers', 'Black', 'M', 'Silk'),
(5, 'Shorts', 'Blue', 'XL', 'Silk'),
(6, 'Coat', 'Black', 'S', 'Leather'),
(7, 'Jacket', 'Brown', 'XXL', 'Leather'),
(8, 'Shirt', 'White', 'L', 'Hoodie'),
(9, 'Cardigan', 'Black', 'L', 'Styrophome'),
(10, 'Shirt', 'Red', 'S', 'Turtleneck'),
(11, 'Jacket', 'Blue', 'X', 'Long Sleeves'),
(12, 'Jeans', 'Grey', 'M', 'Torn'),
(13, 'Sweater', 'Orange', 'L', 'Silk'),
(14, 'Shirt', 'Red', 'L', 'Workout'),
(15, 'Tank Top', 'Black', 'XL', 'Workout'),
(16, 'T-Shirt', 'White', 'S', 'Crew neck'),
(17, 'T-Shirt', 'Black', 'M', 'Crew neck'),
(18, 'T-Shirt', 'Grey', 'XL', 'Crew neck'),
(19, 'Jeans', 'Black', 'L', 'Baggy'),
(20, 'Jeans', 'Black', 'S', 'Skinny'),
(21, 'Denim shirt', 'Black', '2XL', 'Slim'),
(22, 'Jumper', 'Navy', 'L', 'drop shoulder'),
(23, 'Shirt', 'Navy', 'M', 'Hoodie'),
(24, 'Jumper', 'Black', 'S', 'Knitted'),
(25, 'SportsQilet', 'Blue', 'M', 'GoldenMoss'),
(26, 'Trousers', 'Khaki', 'XL', 'Kargo'),
(27, 'Jacket', 'Navy', 'XL', 'Bomber'),
(28, 'Jacket', 'Black', 'S', 'Leather'),
(29, 'Shorts', 'Khaki', 'M', 'Side taped'),
(30, 'Jacket', 'Pink', 'L', 'OversizedZip'),
(31, 'Jumper', 'Grey', 'S', 'Turtleneck'),
(32, 'Jacket', 'Yellow', 'XL', 'Puffer'),
(33, 'T-Shirt', 'White', 'L', 'Stripe'),
(34, 'Shirt', 'Blue', 'S', 'Gingham'),
(35, 'Jacket', 'Khaki', 'L', 'PufferWithHood'),
(36, 'Jumper', 'Blue', 'XL', 'Oversized'),
(37, 'Shirt', 'Midnight navy', 'S', 'Hoodie'),
(38, 'Shirt', 'Khaki', 'L', 'Hoodie'),
(39, 'Jacket', 'White', 'S', 'Puffer'),
(40, 'Jumper', 'Dark grey', 'S', 'OversizedRibbed'),
(41, 'Jumper', 'Black and White twist', 'L', 'RollNeck'),
(42, 'Jacket', 'Light khaki', 'S', 'BomberWithSnapPockets'),
(43, 'T-Shirt', 'White', 'XL', 'CrewNeck'),
(44, 'Jacket', 'Black', 'S', 'HybridPuffer'),
(45, 'Cardigan', 'Black', 'XL', 'KnittedHooded'),
(46, 'Gilet', 'Light-grey', 'S', 'ThreadbareBorg'),
(47, 'Jacket', 'Grey heather', 'L', 'Fleece'),
(48, 'Jumper', 'Blue & Purple', 'XL', 'RollNeck'),
(49, 'Jumper', 'Black', 'S', 'Turtleneck'),
(50, 'Puffer gilet', 'Khaki', 'XL', 'ContrastPanel'),
(51, 'Jeans', 'Wash blue', 'S', 'StraightLeg'),
(52, 'Jacket', 'Black', 'M', 'LeatherRacer'),
(53, 'Jumper', 'Light-grey', 'S', 'FishermanStripe'),
(54, 'Polo', 'Black', 'M', 'LongSleeve'),
(55, 'Jacket', 'Khaki', 'XL', 'Water repellent coach'),
(56, 'Overcoat', 'Light-khaki', 'L', 'Oversized'),
(57, 'Jacket', 'Black', 'XL', 'Windbreaker'),
(58, 'Jumper', 'Black', 'S', 'Crew neck'),
(59, 'Jumper', 'Lilac chalk', 'XL', 'Hoodie'),
(60, 'Jumper', 'Grey', 'M', 'ditressed');

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








