-- users
INSERT INTO public.users (name, email, avatar, password) VALUES
  ('Евгений Cмирнов', 'evgen2002@ya.ru', '/img/avatar02.jpg', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5'),
	('Василий Уткин', 'vas12121@ya.ru', '/img/avatar.jpg', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5');

-- offers
INSERT INTO public.offers (title, description, type, picture, sum, author_id) VALUES
  ('Куплю породистого кота.', 'Продаю с болью в сердце... Бонусом отдам все аксессуары. Таких предложений больше нет! Товар в отличном состоянии.', 'buy', '/img/item06.jpg', 62570, 1),
	('Куплю детские санки.', 'Мой дед не мог её сломать. Даю недельную гарантию.', 'buy', '/img/item15.jpg', 80926, 1),
	('Куплю антиквариат.', 'Кому нужен этот новый телефон, если тут такое... Кажется, что это хрупкая вещь. Бонусом отдам все аксессуары. Мой дед не мог её сломать.', 'sell', '/img/item16.jpg', 91599, 1),
	('Отдам в хорошие руки подшивку «Мурзилка».', 'Если найдёте дешевле — сброшу цену. Мой дед не мог её сломать. Кажется, что это хрупкая вещь. Это настоящая находка для коллекционера! Продаю с болью в сердце...', 'buy', '/img/item14.jpg', 78398, 1),
	('Продам книги Стивена Кинга.', 'Кажется, что это хрупкая вещь. Если найдёте дешевле — сброшу цену.', 'sell', '/img/item16.jpg', 55311, 2),
	('Куплю породистого кота.', 'Даю недельную гарантию.', 'sell', '/img/item15.jpg', 66745, 1),
	('Отдам в хорошие руки подшивку «Мурзилка».', 'Если товар не понравится — верну всё до последней копейки. Пользовались бережно и только по большим праздникам.', 'buy', '/img/item03.jpg', 98013, 2),
	('Продам отличную подборку фильмов на VHS.', 'Продаю с болью в сердце... Товар в отличном состоянии. При покупке с меня бесплатная доставка в черте города. Пользовались бережно и только по большим праздникам.', 'sell', '/img/item04.jpg', 93212, 1),
	('Куплю детские санки.', 'Товар в отличном состоянии. Если товар не понравится — верну всё до последней копейки. Если найдёте дешевле — сброшу цену.', 'sell', '/img/item12.jpg', 26582, 1),
	('Продам отличную подборку фильмов на VHS.', 'Если товар не понравится — верну всё до последней копейки. При покупке с меня бесплатная доставка в черте города. Две страницы заляпаны свежим кофе. Не пытайтесь торговаться. Цену вещам я знаю. Кажется, что это хрупкая вещь.', 'buy', '/img/item10.jpg', 37922, 1),
	('Отдам в хорошие руки подшивку «Мурзилка».', 'Кому нужен этот новый телефон, если тут такое... Если товар не понравится — верну всё до последней копейки. Это настоящая находка для коллекционера! Бонусом отдам все аксессуары. Две страницы заляпаны свежим кофе.', 'sell', '/img/item01.jpg', 58098, 2),
	('Куплю детские санки.', 'Если товар не понравится — верну всё до последней копейки. Не пытайтесь торговаться. Цену вещам я знаю. Мой дед не мог её сломать. Продаю с болью в сердце...', 'sell', '/img/item16.jpg', 95088, 2),
	('Продам советскую посуду. Почти не разбита.', 'Бонусом отдам все аксессуары. Пользовались бережно и только по большим праздникам. Таких предложений больше нет! Если найдёте дешевле — сброшу цену. Мой дед не мог её сломать.', 'buy', '/img/item10.jpg', 54158, 1),
	('Куплю породистого кота.', 'Две страницы заляпаны свежим кофе. Даю недельную гарантию. Таких предложений больше нет!', 'buy', '/img/item02.jpg', 76965, 2),
	('Продам коллекцию журналов «Огонёк».', 'Две страницы заляпаны свежим кофе.', 'buy', '/img/item04.jpg', 67956, 1),
	('Продам новую приставку Sony Playstation 5.', 'Продаю с болью в сердце...', 'buy', '/img/item10.jpg', 71402, 2),
	('Куплю породистого кота.', 'Если товар не понравится — верну всё до последней копейки.', 'sell', '/img/item07.jpg', 70526, 1),
	('Продам отличную подборку фильмов на VHS.', 'Мой дед не мог её сломать. Кому нужен этот новый телефон, если тут такое... Не пытайтесь торговаться. Цену вещам я знаю. Две страницы заляпаны свежим кофе. Если найдёте дешевле — сброшу цену.', 'sell', '/img/item05.jpg', 14978, 2),
	('Куплю детские санки.', 'Если товар не понравится — верну всё до последней копейки. Кажется, что это хрупкая вещь.', 'buy', '/img/item14.jpg', 82926, 2),
	('Продам коллекцию журналов «Огонёк».', 'Две страницы заляпаны свежим кофе. Продаю с болью в сердце...', 'buy', '/img/item01.jpg', 26167, 2);

-- categories
INSERT INTO public.categories (name) VALUES
  ('Книги'),
	('Журналы'),
	('Разное'),
	('Игры'),
	('Животные'),
	('Посуда');

-- offers_categories
INSERT INTO public.offers_categories (offer_id, category_id) VALUES
  (1, 5),
	(2, 1),
	(2, 3),
	(2, 4),
	(2, 6),
	(3, 5),
	(3, 3),
	(4, 1),
	(4, 4),
	(4, 3),
	(4, 5),
	(4, 2),
	(4, 6),
	(5, 6),
	(5, 3),
	(5, 4),
	(6, 6),
	(6, 3),
	(6, 2),
	(6, 5),
	(7, 6),
	(7, 4),
	(7, 5),
	(7, 2),
	(7, 1),
	(7, 3),
	(8, 4),
	(8, 6),
	(9, 6),
	(9, 2),
	(9, 4),
	(10, 3),
	(10, 6),
	(10, 5),
	(10, 2),
	(11, 2),
	(11, 3),
	(11, 1),
	(11, 5),
	(12, 6),
	(13, 4),
	(13, 2),
	(13, 6),
	(13, 1),
	(13, 5),
	(13, 3),
	(14, 2),
	(14, 4),
	(15, 4),
	(15, 5),
	(15, 1),
	(15, 6),
	(16, 1),
	(16, 6),
	(16, 3),
	(16, 4),
	(17, 6),
	(17, 5),
	(17, 1),
	(17, 4),
	(18, 3),
	(18, 2),
	(19, 5),
	(19, 3),
	(19, 4),
	(19, 6),
	(19, 2),
	(20, 1),
	(20, 6);

-- comments
INSERT INTO public.comments (text, author_id, offer_id) VALUES 
  ('Вы что?! В магазине дешевле.', 1, 1),
	('А где блок питания?', 1, 1),
	('Продаю в связи с переездом. Отрываю от сердца.', 2, 1),
	('Неплохо, но дорого', 2, 2),
	('А где блок питания?', 1, 3),
	('Вы что?! В магазине дешевле.', 2, 3),
	('Почему в таком ужасном состоянии?', 2, 3),
	('Оплата наличными или перевод на карту?', 2, 3),
	('Вы что?! В магазине дешевле.', 2, 4),
	('А где блок питания?', 2, 4),
	('Оплата наличными или перевод на карту?', 2, 5),
	('Продаю в связи с переездом. Отрываю от сердца.', 1, 5),
	('Неплохо, но дорого', 1, 6),
	('Вы что?! В магазине дешевле.', 1, 7),
	('Продаю в связи с переездом. Отрываю от сердца.', 1, 8),
	('С чем связана продажа? Почему так дешёво?', 2, 8),
	('Неплохо, но дорого', 1, 8),
	('А где блок питания?', 1, 8),
	('Вы что?! В магазине дешевле.', 2, 8),
	('Оплата наличными или перевод на карту?', 1, 8),
	('А сколько игр в комплекте?', 2, 8),
	('Почему в таком ужасном состоянии?', 2, 8),
	('С чем связана продажа? Почему так дешёво?', 2, 9),
	('Оплата наличными или перевод на карту?', 1, 9),
	('Продаю в связи с переездом. Отрываю от сердца.', 1, 9),
	('Совсем немного...', 1, 9),
	('А где блок питания?', 1, 9),
	('Вы что?! В магазине дешевле.', 1, 9),
	('Неплохо, но дорого', 2, 9),
	('Почему в таком ужасном состоянии?', 1, 9),
	('А сколько игр в комплекте?', 1, 9),
	('Оплата наличными или перевод на карту?', 1, 10),
	('Неплохо, но дорого', 1, 11),
	('Почему в таком ужасном состоянии?', 1, 12),
	('А сколько игр в комплекте?', 1, 12),
	('Продаю в связи с переездом. Отрываю от сердца.', 1, 12),
	('С чем связана продажа? Почему так дешёво?', 1, 12),
	('Вы что?! В магазине дешевле.', 1, 12),
	('Вы что?! В магазине дешевле.', 1, 13),
	('Оплата наличными или перевод на карту?', 2, 13),
	('А где блок питания?', 2, 14),
	('С чем связана продажа? Почему так дешёво?', 2, 14),
	('Вы что?! В магазине дешевле.', 1, 14),
	('Почему в таком ужасном состоянии?', 2, 14),
	('Оплата наличными или перевод на карту?', 2, 14),
	('Совсем немного...', 1, 14),
	('А сколько игр в комплекте?', 1, 14),
	('Продаю в связи с переездом. Отрываю от сердца.', 1, 14),
	('Оплата наличными или перевод на карту?', 1, 15),
	('А сколько игр в комплекте?', 1, 15),
	('Совсем немного...', 2, 15),
	('Неплохо, но дорого', 2, 15),
	('А где блок питания?', 2, 15),
	('Вы что?! В магазине дешевле.', 2, 15),
	('С чем связана продажа? Почему так дешёво?', 1, 15),
	('Почему в таком ужасном состоянии?', 2, 15),
	('Продаю в связи с переездом. Отрываю от сердца.', 1, 15),
	('А где блок питания?', 2, 16),
	('Оплата наличными или перевод на карту?', 2, 16),
	('С чем связана продажа? Почему так дешёво?', 2, 16),
	('Неплохо, но дорого', 2, 16),
	('Почему в таком ужасном состоянии?', 1, 16),
	('А сколько игр в комплекте?', 2, 16),
	('Совсем немного...', 2, 16),
	('Совсем немного...', 2, 17),
	('Неплохо, но дорого', 2, 17),
	('Вы что?! В магазине дешевле.', 2, 17),
	('С чем связана продажа? Почему так дешёво?', 1, 17),
	('А где блок питания?', 1, 17),
	('А где блок питания?', 2, 18),
	('Совсем немного...', 2, 18),
	('Оплата наличными или перевод на карту?', 1, 18),
	('С чем связана продажа? Почему так дешёво?', 1, 19),
	('Продаю в связи с переездом. Отрываю от сердца.', 1, 19),
	('А где блок питания?', 2, 19),
	('Оплата наличными или перевод на карту?', 2, 19),
	('Почему в таком ужасном состоянии?', 2, 19),
	('Совсем немного...', 2, 19),
	('Неплохо, но дорого', 2, 19),
	('А где блок питания?', 2, 20),
	('Неплохо, но дорого', 1, 20),
	('Оплата наличными или перевод на карту?', 1, 20),
	('Почему в таком ужасном состоянии?', 2, 20),
	('Вы что?! В магазине дешевле.', 2, 20),
	('А сколько игр в комплекте?', 2, 20);

