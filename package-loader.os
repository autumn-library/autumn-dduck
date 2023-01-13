// BSLLS:UnusedLocalMethod-off
// BSLLS:UnusedParameters-off
// BSLLS:MissingParameterDescription-off
Процедура ПриЗагрузкеБиблиотеки(Путь, СтандартнаяОбработка, Отказ)
	Если Осень <> Неопределено Тогда
		ПутьДоЗаготовки = ОбъединитьПути(Путь, "src", "Заготовки", "ИнициализацияDDNS.os");
		ПодключитьСценарий(ПутьДоЗаготовки, "ИнициализацияDDNS");
		Осень.ДобавитьЗаготовкуДляАвтоИнициализации("ИнициализацияDDNS");
	Иначе
		ВызватьИсключение "Некорректный порядок импорта библиотек. Сначала подключите autumn";	
	КонецЕсли;
КонецПроцедуры
// BSLLS:UnusedLocalMethod-on
// BSLLS:UnusedParameters-on
// BSLLS:MissingParameterDescription-on