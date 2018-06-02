USE test;

DROP TABLE if exists book;
CREATE TABLE book(
  id INT(11) NOT NULL AUTO_INCREMENT,
  title VARCHAR(100) DEFAULT NULL ,
  description VARCHAR(255) DEFAULT NULL ,
  author VARCHAR(100) DEFAULT NULL ,
  isbn VARCHAR(20) DEFAULT NULL ,
  printYear INT(11) UNSIGNED DEFAULT NULL ,
  readAlready TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
  ENGINE = MYISAM
  DEFAULT CHARACTER SET = utf8,
  COLLATE utf8_general_ci;

INSERT INTO book (title, description, author, isbn, printYear)
    VALUES ('Всадник без головы', 'Действие романа происходит в пятидесятых годах XIX века в приграничных районах штата Техас.', 'Майн Рид', 'ISBN-1', '1865');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES ('Мастер и Маргарита', 'Действие романа начинается в один из майских дней, когда два московс...', 'Михаил Булгаков', 'ISBN-2', '1937');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES ('Преступление и наказание', 'Замысел «Преступления и наказания» созревал у Достоевского в течение многих лет, однако центральная тема, связанная с идеей главного героя об «обыкновенных» и «необыкновенных» людях, начала формирова...', 'Фёдор Достоевский', 'ISBN-3', '1866');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES ('Асканио', 'Сюжет книги начинается с молчаливого любования красивого юноши прекрасной девушкой. Оказавшись преградой...', 'Александр Дюма', 'ISBN-4', '1843');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES ('Графиня Дэ Монсоро', 'Вторая половина XVI века, Франция. В Париже правит Генрих III Валуа. Король слаб, безволен, капризен и весьма религиозен...', 'Александр Дюма', 'ISBN-5', '1864');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('Сорок пять', 'В романе «Сорок пять» читатель вновь встречается с Дианой де Меридор...', 'Александр Дюма', 'ISBN-6', '1866');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES ('Фантомы', 'Две сестры Дженифер и Лиза Пэйли приезжают в небольшой городок Сноуфилд в Колорадо, находящийся в преддверии гор....', 'Дин Кунц', 'ISBN-8', '1983');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES ('Незнайка на Луне', 'Действие происходит спустя 2,5 года после того, как Незнайка, Кнопочка и Пёстренький....', 'Николай Носов', 'ISBN-9', '1965');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES ('Алмазный меч, деревянный меч', 'Империя Мельин управляется марионеточной монархией, в то время как реальная власть...', 'Ник Перумов', 'ISBN-10', '1998');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES ('Прыжок в легенду', 'Повести «Прыжок в легенду» и «О чем звенели рельсы» — первые произведения украинского писателя Миколы Гнидюка, переведенные...', 'Николай Гнидюк', 'ISBN-11', '1975');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES ('В нашей галактике', 'О современных представлениях об образовании звезд, планет...', 'Лев Мухин', 'ISBN-12', '1983');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES ('Бизнес-разведка', 'Предлагаемое пособие содержит материал, в котором обобщен...', 'Александр Доронин', 'ISBN-13', '2003');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES (' F-117 Nighthawk', 'Президент отделения перспективных проектов («Сканк Уоркс») фирмы...', 'Михаил Никольский', 'ISBN-14', '2005');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES ('Авантюра', 'Фантастично-пригодницький роман...', 'Володимир Аврааменко', 'ISBN-15', '1994');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES ('Тайна Обители Спасения', 'Париж, осень 1838 года. Приехавший из Германии господин Мейер, пытаясь...', 'Поль Феваль', 'ISBN-16', '1995');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES ('Фабрика драконов', 'Бывший полицейский Джо Леджер и его товарищи по отряду «Эхо»...', 'Томас Сас', 'ISBN-18', '2012');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES ('Краденая победа', 'Расставшись с Мелиной (повесть «Когда камни кричат»), Рокетт отправился...', 'Павел Буркин', 'ISBN-19', '2001');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES (' Шаг в неизбежность ', 'И почему люди не могут знать, что их ждёт? Стоит...', 'Гарольд Хоук', 'ISBN-20', '1988');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES ('book-1', 'desc-1', 'author-1', 'ISBN-22', '1944');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES ('book-2', 'desc-2', 'author-2', 'ISBN-23', '1945');
INSERT INTO book (title, description, author, isbn, printYear)
    VALUES ('book-3', 'desc-3', 'author-3', 'ISBN-24', '1946');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-4', 'desc-4', 'author-4', 'ISBN-25', '1947');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-5', 'desc-5', 'author-5', 'ISBN-26', '1948');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-6', 'desc-6', 'author-6', 'ISBN-27', '1949');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-7', 'desc-7', 'author-7', 'ISBN-28', '1950');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-8', 'desc-8', 'author-8', 'ISBN-29', '1951');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-9', 'desc-9', 'author-9', 'ISBN-30', '1952');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-10', 'desc-10', 'author-10', 'ISBN-31', '1953');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-11', 'desc-11', 'author-11', 'ISBN-32', '1954');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-12', 'desc-12', 'author-11', 'ISBN-33', '1955');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-13', 'desc-13', 'author-11', 'ISBN-34', '1956');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-14', 'desc-14', 'author-12', 'ISBN-35', '1957');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-15', 'desc-15', 'author-13', 'ISBN-36', '1958');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-16', 'desc-16', 'author-13', 'ISBN-37', '1959');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-17', 'desc-17', 'author-13', 'ISBN-38', '1960');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-18', 'desc-18', 'author-14', 'ISBN-39', '1960');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-19', 'desc-19', 'author-14', 'ISBN-40', '1961');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-20', 'desc-20', 'author-15', 'ISBN-41', '1961');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-21', 'desc-21', 'author-16', 'ISBN-42', '1962');
INSERT INTO book (title, description, author, isbn, printYear)
VALUES ('book-22', 'desc-22', 'author-16', 'ISBN-43', '1963');



