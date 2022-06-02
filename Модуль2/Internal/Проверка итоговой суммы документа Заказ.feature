﻿#language: ru

@tree
@Продажи
Функционал: Проверка итоговой суммы в   Заказ

Как менеджер по продажам я хочу
проверить рассчет итоговой суммы в документе Заказ
чтобы точно выставлять счета клиенту 

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Проверка итоговой суммы документа Заказ
* Заполнение шапки документа
	И Заполнение шапки документа Заказ (раздел Продажи)
* Добавление первой строки в таблицу Товары
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я выбираю текущую строку

	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '1 500,00'
	И в таблице "Товары" я завершаю редактирование строки
* Проверка итоговый сумм	
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '1'
	И элемент формы с именем "ТоварыИтогСумма" стал равен '1 500'
* Добавление второй сторки в Товары
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000031' | 'Босоножки'    |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '700,00'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я завершаю редактирование строки
* Проверка итоговых сумм
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '3'
	И элемент формы с именем "ТоварыИтогСумма" стал равен '2 900'
* Закрытие открытых окон
	И я закрываю все окна клиентского приложения
		
				