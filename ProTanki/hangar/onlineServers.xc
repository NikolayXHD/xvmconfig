{
    // online servers
    // онлайн серверов
    "onlineServers": {
      // true - Enable display online of servers
      // true - показывать онлайн серверов
      "enabled": false,
      // Axis field coordinates
      // Положение поля по осям
      "x": -3,
      "y": 51,
      // Horizontal alignment of field at screen ("left", "center", "right").
      // Горизонтальное выравнивание поля на экране ("left", "center", "right").
      "hAlign": "right",
      // Vertical alignment of field at screen ("top", "center", "bottom").
      // Вертикальное выравнивание поля на экране ("top", "center", "bottom").
      "vAlign": "top",
      // Transparency
      // Прозрачность от 0 до 100
      "alpha": 80,
      // If set, draw image at background.
      // Фоновое изображение, если задано.
      // example: "bgImage": "cfg://My/img/my.png",
      "bgImage": null,
      // Server to online text delimiter
      // Разделитель сервера от онлайна
      "delimiter": ": ",
      // Maximum number of column rows
      // Максимальное количество строк одной колонки
      "maxRows": 2,
      // Gap between columns
      // Пространство между колонками
      "columnGap": 3,
      // Leading between lines.
      // Пространство между строками
      "leading": 0,
      // layer - "bottom", "normal" (default), "top".
      // слой - "bottom", "normal" (по-умолчанию), "top".
      "layer": "normal",
      // true - show title "Online"
      // true - показывать заголовок "Онлайн"
      "showTitle": true,
      // true - show server names in list
      // true - показывать названия серверов в списке
      "showServerName": true,
      // expand server names to this amount of symbols. recommended to use monospace font if this option is set.
      // расширить названия серверов до данного количества символов. рекомендуется использовать моноширинный шрифт если данная опция задана.
      "minimalNameLength": 4,
      // expand values to this amount of symbols. recommended to use monospace font if this option is set.
      // расширить значения до данного количества символов. рекомендуется использовать моноширинный шрифт если данная опция задана.
      "minimalValueLength": 0,
      // text to show in case of error
      // текст показываемый в случае ошибки
      "errorString": "--k",
      // List of ignored servers, for example, ["RU1", "RU2"]
      // Список игнорируемых серверов, например, ["RU1", "RU2"]
      "ignoredServers": [],
      // Text style
      // Стиль текста
      "fontStyle": {
        // Font name
        // Название шрифта
        "name": "$FieldFont",
        "size": 12,         // Размер
        "bold": false,      // Жирный
        "italic": false,    // Курсив
        // Different colors depending on people online
        // Разные цвета в зависимости от количества игроков
        "color": {
          "great": "0x60ff00",  // Отличный
          "good":  "0xF8F400",  // Хороший
          "poor":  "0xFE7903",  // Так себе
          "bad":   "0xFE0E00"   // Плохой
        },
        // Mark current server in the list, possible options: "none" (don't mark), "normal", "bold", "italic", "underline"
        // Выделять текущий сервер в списке, доступные опции: "none" (не выделять), "normal", "bold", "italic", "underline"
        "markCurrentServer": "bold",
        // Color for server name and delimiter (for example, "0x8080FF"). Empty string "" - use same color as online value
        // Цвет для названия сервера и разделителя (например, "0x8080FF"). Пустая строка "" - использовать цвет значения онлайна
        "serverColor": ""
     },
      // Threshold values defining server online and thus shorter battle queue
      // Пороговые значения, определяющие количество человек онлайн и следовательно меньшую очередь в бой
      "threshold": {
        "great": 30000,
        "good": 10000,
        "poor": 3000
        //below this value the queue might be long
        //ниже этого значения очередь может быть долгой
      },
      // Shadow options
      // Параметры тени
      "shadow": {
        "enabled": true,
        "distance": 0,
        "angle": 0,        
        "color": "0x000000",
        "alpha": 70,
        "blur": 4,
        "strength": 2
      }
   }
}