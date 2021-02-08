
Процедура ОбработкаПроведения(Отказ, Режим)
	//{{__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!

	// регистр ТоварыНаСкладе Приход
	Движения.ТоварыНаСкладе.Записывать = Истина;
	Для Каждого ТекСтрокаЗакупки Из Закупки Цикл
		Движение = Движения.ТоварыНаСкладе.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Период = Дата;
		Движение.Поставщик = Поставщик;
		Движение.Наименование = ТекСтрокаЗакупки.Наименование;
		Движение.Сумма = ТекСтрокаЗакупки.Сумма;
		Движение.Количество = ТекСтрокаЗакупки.Количество;
	КонецЦикла;

	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры
