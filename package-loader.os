// BSLLS:UnusedLocalMethod-off
// BSLLS:UnusedParameters-off
// BSLLS:MissingParameterDescription-off
Процедура ПриЗагрузкеБиблиотеки(Путь, СтандартнаяОбработка, Отказ)
	Если Осень <> Неопределено Тогда
		СтандартнаяОбработка = Ложь;
		ПутьДоЗаготовки = ОбъединитьПути(Путь, "src", "Заготовки", "ИнициализаторDDNS.os");
		ПодключитьСценарий(ПутьДоЗаготовки, "ИнициализаторDDNS");
		Осень.ДобавитьЗаготовкуДляАвтоИнициализации("ИнициализаторDDNS");
	Иначе
		ВызватьИсключение "Некорректный порядок импорта библиотек. Сначала подключите autumn";	
	КонецЕсли;
КонецПроцедуры
// BSLLS:UnusedLocalMethod-on
// BSLLS:UnusedParameters-on
// BSLLS:MissingParameterDescription-on