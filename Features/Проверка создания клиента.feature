﻿#language: ru

@tree

Функционал: проверка создания клиента

Как Операттор я хочу
создать клиента
чтобы внести в клиентскую базу

Контекст: 
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: проверка создания клиента
* Открытие формы клиента
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Контрагенты'
	Тогда открылось окно 'Контрагенты'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Заполнение наименованиея клиента
	И в поле с именем 'Наименование' я ввожу текст 'Тестовый контрагент'
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Оптовая'
* Заполнение номера телефона клиента
	И в поле с именем 'Телефон' я ввожу текст '1111111'
* Сохранение
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Проверка сохранения по коду
	И я запоминаю значение поля "Код" как "Код"
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Тестовый контрагент (Контрагент)' в течение 20 секунд
	Тогда таблица "Список" содержит строки:
		| 'Код' |
		| '$Код$' |
	
			
	