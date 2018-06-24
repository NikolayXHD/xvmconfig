{
    // Options for the "short" panels - panels with frags and vehicle icon.
    // Режим ушей "short" - короткие уши (фраги и иконка танка).
    "short": {
      // false - disable (отключить)
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "badge", "nick", "vehicle".
      // Отображаемые стандартные поля в данном режиме, и их порядок.
      // Допустимые названия: "frags", "badge", "nick", "vehicle".
      "standardFields": [ "frags" ],
      // Width of area for switching to "large" mode on mouse over
      // Ширина области переключения в режим "large" при наведении мыши
      "expandAreaWidth": 230,
      // true - disable platoon icons
      // true - убрать отображение иконок взвода
      "removeSquadIcon": false,
      // Transparency of the squad icon
      // Прозрачность иконки взвода
      "squadIconAlpha": 100,
      // Offset of X value for vehicle icon.
      // Смещение координаты X для иконки танка.
      "vehicleIconXOffsetLeft": 0,
      "vehicleIconXOffsetRight": 0,
      // Offset of X value for vehicle level.
      // Смещение координаты X для уровня танка.
      "vehicleLevelXOffsetLeft": 0,
      "vehicleLevelXOffsetRight": 0,
      // Transparency of vehicle level
      // Прозрачность уровня танка
      "vehicleLevelAlpha": 100,
      // Offset of X value for frags column.
      // Смещение координаты X для поля фрагов.
      "fragsXOffsetLeft": 0,
      "fragsXOffsetRight": 0,
      // Width of the frags column. Default is 24.
      // Ширина поля фрагов. По умолчанию: 24.
      "fragsWidth": 24,
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      // Тень для поля фрагов (по умолчанию null = без тени, как в чистом клиенте).
      "fragsShadowLeft": null,
      "fragsShadowRight": null,
      // Offset of X value for rank badge column.
      // Смещение координаты X для поля бейджа ранга.
      "rankBadgeXOffsetLeft": 0,
      "rankBadgeXOffsetRight": 0,
      // Width of the rank badge column. Default is 24.
      // Ширина поля бейджа ранга. По умолчанию: 24.
      "rankBadgeWidth": 24,
      // Transparency of the rank badge
      // Прозрачность бейджа ранга
      "rankBadgeAlpha": "{{alive?100|70}}",
      // Offset of X value for player name column.
      // Смещение координаты X для поля имени игрока.
      "nickXOffsetLeft": 0,
      "nickXOffsetRight": 0,
      // Minimum width of the player name column. Default is 46.
      // Минимальная ширина поля имени игрока. По умолчанию: 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column. Default is 158.
      // Максимальная ширина поля имени игрока. По умолчанию: 158.
      "nickMaxWidth": 158,
      // Display format for player name (macros allowed, see macros.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. macros.txt).
      "nickFormatLeft": "<font face='mono' size='{{xvm-stat?13|0}}' color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{r}}</font> {{name%.15s~..}}<font alpha='#A0'>{{clan}}</font>",
      "nickFormatRight": "<font alpha='#A0'>{{clan}}</font>{{name%.15s~..}} <font face='mono' size='{{xvm-stat?13|0}}' color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{r}}</font>",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      // Тень для поля имени игрока (по умолчанию null = без тени, как в чистом клиенте).
      "nickShadowLeft": null,
      "nickShadowRight": null,
      // Offset of X value for vehicle name column.
      // Смещение координаты X для поля названия танка.
      "vehicleXOffsetLeft": 0,
      "vehicleXOffsetRight": 0,
      // Width of the vehicle name column. Default is 72.
      // Ширина поля названия танка. По умолчанию: 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. macros.txt).
      "vehicleFormatLeft": "{{vehicle}}",
      "vehicleFormatRight": "{{vehicle}}",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      // Тень для поля названия танка (по умолчанию null = без тени, как в чистом клиенте).
      "vehicleShadowLeft": null,
      "vehicleShadowRight": null,
      // true - don't change players positions on dead (default false)
      // true - не изменять позиции игроков при уничтожении (по умолчанию false)
      "fixedPosition": false,
      // Extra fields. Each field have default size 350x25.
      // Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер по умолчанию 350x25.
      // Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [
        ${"../playersPanel.xc":"def.clanIcon"},
        ${"../playersPanel.xc":"def.xvmUserMarker"},
        ${"../xmqp/xmqpServiceMarker.xc":"xmqpServiceMarker"}
      ],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
        ${"../playersPanel.xc":"def.clanIcon"},
        ${"../playersPanel.xc":"def.xvmUserMarker"},
        // enemy spotted status marker (see above).
        // маркер статуса засвета противника (см. выше).
        ${"../Spotted/enemySpottedMarker.xc":"enemySpottedMarker"}
      ]
    },
    // Options for the "medium" panels - the first of the medium panels.
    // Режим ушей "medium" - первые средние уши в игре.
    "medium": {
      // false - disable (отключить)
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "badge", "nick", "vehicle".
      // Отображаемые стандартные поля в данном режиме, и их порядок.
      // Допустимые названия: "frags", "badge", "nick", "vehicle".
      "standardFields": [ "frags", "badge", "nick" ],
      // Width of area for switching to "large" mode on mouse over
      // Ширина области переключения в режим "large" при наведении мыши
      "expandAreaWidth": 230,
      // true - disable platoon icons
      // true - убрать отображение иконок взвода
      "removeSquadIcon": false,
      // Transparency of the squad icon
      // Прозрачность иконки взвода
      "squadIconAlpha": 100,
      // Offset of X value for vehicle icon.
      // Смещение координаты X для иконки танка.
      "vehicleIconXOffsetLeft": 0,
      "vehicleIconXOffsetRight": 0,
      // Offset of X value for vehicle level.
      // Смещение координаты X для уровня танка.
      "vehicleLevelXOffsetLeft": 0,
      "vehicleLevelXOffsetRight": 0,
      // Transparency of vehicle level
      // Прозрачность уровня танка
      "vehicleLevelAlpha": 100,
      // Offset of X value for frags column.
      // Смещение координаты X для поля фрагов.
      "fragsXOffsetLeft": 0,
      "fragsXOffsetRight": 0,
      // Width of the frags column. Default is 24.
      // Ширина поля фрагов. По умолчанию: 24.
      "fragsWidth": 24,
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      // Тень для поля фрагов (по умолчанию null = без тени, как в чистом клиенте).
      "fragsShadowLeft": null,
      "fragsShadowRight": null,
      // Offset of X value for rank badge column.
      // Смещение координаты X для поля бейджа ранга.
      "rankBadgeXOffsetLeft": 0,
      "rankBadgeXOffsetRight": 0,
      // Width of the rank badge column. Default is 24.
      // Ширина поля бейджа ранга. По умолчанию: 24.
      "rankBadgeWidth": 24,
      // Transparency of the rank badge
      // Прозрачность бейджа ранга
      "rankBadgeAlpha": "{{alive?100|70}}",
      // Offset of X value for player name column.
      // Смещение координаты X для поля имени игрока.
      "nickXOffsetLeft": 0,
      "nickXOffsetRight": 0,
      // Minimum width of the player name column. Default is 46.
      // Минимальная ширина поля имени игрока. По умолчанию: 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column. Default is 158.
      // Максимальная ширина поля имени игрока. По умолчанию: 158.
      "nickMaxWidth": 158,
      // Display format for player nickname (macros allowed, see macros.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. macros.txt).
      "nickFormatLeft": "<font color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{name%.12s~..}}</font> <font alpha='#A0'>{{clan}}</font>",
      "nickFormatRight": "<font alpha='#A0'>{{clan}}</font> <font color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{name%.12s~..}}</font>",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      // Тень для поля имени игрока (по умолчанию null = без тени, как в чистом клиенте).
      "nickShadowLeft": null,
      "nickShadowRight": null,
      // Offset of X value for vehicle name column.
      // Смещение координаты X для поля названия танка.
      "vehicleXOffsetLeft": 0,
      "vehicleXOffsetRight": 0,
      // Width of the vehicle name column. Default is 72.
      // Ширина поля названия танка. По умолчанию: 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. macros.txt).
      "vehicleFormatLeft": "<font color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font>",
      "vehicleFormatRight": "<font color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font>",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      // Тень для поля названия танка (по умолчанию null = без тени, как в чистом клиенте).
      "vehicleShadowLeft": null,
      "vehicleShadowRight": null,
      // true - don't change players positions on dead (default false)
      // true - не изменять позиции игроков при уничтожении (по умолчанию false)
      "fixedPosition": false,
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [
        ${"../playersPanel.xc":"def.clanIcon"},
        ${"../playersPanel.xc":"def.xvmUserMarker"},
        ${"../xmqp/xmqpServiceMarker.xc":"xmqpServiceMarker"}
      ],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
        ${"../playersPanel.xc":"def.clanIcon"},
        ${"../playersPanel.xc":"def.xvmUserMarker"},
        // enemy spotted status marker (see above).
        // маркер статуса засвета противника (см. выше).
        ${"../Spotted/enemySpottedMarker.xc":"enemySpottedMarker"}
      ]
    },
    // Options for the "medium2" panels - the second of the medium panels.
    // Режим ушей "medium2" - вторые средние уши в игре.
    "medium2": {
      // false - disable (отключить)
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "badge", "nick", "vehicle".
      // Отображаемые стандартные поля в данном режиме, и их порядок.
      // Допустимые названия: "frags", "badge", "nick", "vehicle".
      "standardFields": [ "frags", "vehicle" ],
      // Width of area for switching to "large" mode on mouse over
      // Ширина области переключения в режим "large" при наведении мыши
      "expandAreaWidth": 230,
      // true - disable platoon icons
      // true - убрать отображение иконок взвода
      "removeSquadIcon": false,
      // Transparency of the squad icon
      // Прозрачность иконки взвода
      "squadIconAlpha": 100,
      // Offset of X value for vehicle icon.
      // Смещение координаты X для иконки танка.
      "vehicleIconXOffsetLeft": 0,
      "vehicleIconXOffsetRight": 0,
      // Offset of X value for vehicle level.
      // Смещение координаты X для уровня танка.
      "vehicleLevelXOffsetLeft": 0,
      "vehicleLevelXOffsetRight": 0,
      // Transparency of vehicle level
      // Прозрачность уровня танка
      "vehicleLevelAlpha": 100,
      // Offset of X value for frags column.
      // Смещение координаты X для поля фрагов.
      "fragsXOffsetLeft": 0,
      "fragsXOffsetRight": 0,
      // Width of the frags column. Default is 24.
      // Ширина поля фрагов. По умолчанию: 24.
      "fragsWidth": 24,
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      // Тень для поля фрагов (по умолчанию null = без тени, как в чистом клиенте).
      "fragsShadowLeft": null,
      "fragsShadowRight": null,
      // Offset of X value for rank badge column.
      // Смещение координаты X для поля бейджа ранга.
      "rankBadgeXOffsetLeft": 0,
      "rankBadgeXOffsetRight": 0,
      // Width of the rank badge column. Default is 24.
      // Ширина поля бейджа ранга. По умолчанию: 24.
      "rankBadgeWidth": 24,
      // Transparency of the rank badge
      // Прозрачность бейджа ранга
      "rankBadgeAlpha": "{{alive?100|70}}",
      // Offset of X value for player name column.
      // Смещение координаты X для поля имени игрока.
      "nickXOffsetLeft": 0,
      "nickXOffsetRight": 0,
      // Minimum width of the player name column. Default is 46.
      // Минимальная ширина поля имени игрока. По умолчанию: 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column. Default is 158.
      // Максимальная ширина поля имени игрока. По умолчанию: 158.
      "nickMaxWidth": 158,
      // Display format for player nickname (macros allowed, see macros.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. macros.txt).
      "nickFormatLeft": "<font color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{name%.12s~..}}</font> <font alpha='#A0'>{{clan}}</font>",
      "nickFormatRight": "<font alpha='#A0'>{{clan}}</font> <font color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{name%.12s~..}}</font>",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      // Тень для поля имени игрока (по умолчанию null = без тени, как в чистом клиенте).
      "nickShadowLeft": null,
      "nickShadowRight": null,
      // Offset of X value for vehicle name column.
      // Смещение координаты X для поля названия танка.
      "vehicleXOffsetLeft": 0,
      "vehicleXOffsetRight": 0,
      // Width of the vehicle name column. Default is 72.
      // Ширина поля названия танка. По умолчанию: 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. macros.txt).
      "vehicleFormatLeft": "<font color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font>",
      "vehicleFormatRight": "<font color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font>",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      // Тень для поля названия танка (по умолчанию null = без тени, как в чистом клиенте).
      "vehicleShadowLeft": null,
      "vehicleShadowRight": null,
      // true - don't change players positions on dead (default false)
      // true - не изменять позиции игроков при уничтожении (по умолчанию false)
      "fixedPosition": false,
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [
        ${"../playersPanel.xc":"def.clanIcon"},
        ${"../playersPanel.xc":"def.xvmUserMarker"},
        ${"../xmqp/xmqpServiceMarker.xc":"xmqpServiceMarker"}
      ],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
        ${"../playersPanel.xc":"def.clanIcon"},
        ${"../playersPanel.xc":"def.xvmUserMarker"},
        // enemy spotted status marker (see above).
        // маркер статуса засвета противника (см. выше).
        ${"../Spotted/enemySpottedMarker.xc":"enemySpottedMarker"}
      ]
    },
    // Options for the "large" panels - the widest panels.
    // Режим ушей "large" - широкие уши в игре.
    "large": {
      // false - disable (отключить)
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "badge", "nick", "vehicle".
      // Отображаемые стандартные поля в данном режиме, и их порядок.
      // Допустимые названия: "frags", "badge", "nick", "vehicle".
      "standardFields": [ "frags", "badge", "nick", "vehicle" ],
      // true - disable platoon icons
      // true - убрать отображение иконок взвода
      "removeSquadIcon": false,
      // Transparency of the squad icon
      // Прозрачность иконки взвода
      "squadIconAlpha": 100,
      // Offset of X value for vehicle icon.
      // Смещение координаты X для иконки танка.
      "vehicleIconXOffsetLeft": 0,
      "vehicleIconXOffsetRight": 0,
      // Offset of X value for vehicle level.
      // Смещение координаты X для уровня танка.
      "vehicleLevelXOffsetLeft": 0,
      "vehicleLevelXOffsetRight": 0,
      // Transparency of vehicle level
      // Прозрачность уровня танка
      "vehicleLevelAlpha": 100,
      // Offset of X value for frags column.
      // Смещение координаты X для поля фрагов.
      "fragsXOffsetLeft": 0,
      "fragsXOffsetRight": 0,
      // Width of the frags column. Default is 24.
      // Ширина поля фрагов. По умолчанию: 24.
      "fragsWidth": 24,
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      // Тень для поля фрагов (по умолчанию null = без тени, как в чистом клиенте).
      "fragsShadowLeft": null,
      "fragsShadowRight": null,
      // Offset of X value for rank badge column.
      // Смещение координаты X для поля бейджа ранга.
      "rankBadgeXOffsetLeft": 0,
      "rankBadgeXOffsetRight": 0,
      // Width of the rank badge column. Default is 24.
      // Ширина поля бейджа ранга. По умолчанию: 24.
      "rankBadgeWidth": 24,
      // Transparency of the rank badge
      // Прозрачность бейджа ранга
      "rankBadgeAlpha": "{{alive?100|70}}",
      // Offset of X value for player name column.
      // Смещение координаты X для поля имени игрока.
      "nickXOffsetLeft": 0,
      "nickXOffsetRight": 0,
      // Minimum width of the player name column. Default is 46.
      // Минимальная ширина поля имени игрока. По умолчанию: 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column, Default is 158.
      // Максимальная ширина поля имени игрока. По умолчанию: 158.
      "nickMaxWidth": 158,
      // Display format for player nickname (macros allowed, see macros.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. macros.txt).
      "nickFormatLeft": "<font face='mono' size='{{xvm-stat?13|0}}' color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{r|--}}</font> {{name%.{{xvm-stat?{{r_size>2?10|13}}|15}}s~..}}<font alpha='#A0'>{{clan}}</font>",
      "nickFormatRight": "<font alpha='#A0'>{{clan}}</font>{{name%.{{xvm-stat?{{r_size>2?10|13}}|15}}s~..}} <font face='mono' size='{{xvm-stat?13|0}}' color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{r}}</font>",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      // Тень для поля имени игрока (по умолчанию null = без тени, как в чистом клиенте).
      "nickShadowLeft": null,
      "nickShadowRight": null,
      // Offset of X value for vehicle name column.
      // Смещение координаты X для поля названия танка.
      "vehicleXOffsetLeft": 0,
      "vehicleXOffsetRight": 0,
      // Width of the vehicle name column. Default is 72.
      // Ширина поля названия танка. По умолчанию: 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. macros.txt).
      "vehicleFormatLeft": "{{vehicle}}",
      "vehicleFormatRight": "{{vehicle}}",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      // Тень для поля названия танка (по умолчанию null = без тени, как в чистом клиенте).
      "vehicleShadowLeft": null,
      "vehicleShadowRight": null,
      // true - don't change players positions on dead (default false)
      // true - не изменять позиции игроков при уничтожении (по умолчанию false)
      "fixedPosition": false,
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsLeft": [
        ${"../playersPanel.xc":"def.clanIcon"},
        ${"../playersPanel.xc":"def.xvmUserMarker"},
        ${"../xmqp/xmqpServiceMarker.xc":"xmqpServiceMarker"}
      ],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
        ${"../playersPanel.xc":"def.clanIcon"},
        ${"../playersPanel.xc":"def.xvmUserMarker"},
        // enemy spotted status marker (see above).
        // маркер статуса засвета противника (см. выше).
        ${"../Spotted/enemySpottedMarker.xc":"enemySpottedMarker"}
      ]
    }
}