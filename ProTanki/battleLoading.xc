/**
 * Parameters of the Battle Loading screen.
 * Параметры экрана загрузки боя.
 */
{
  "templates": {
    // Clan icon definition.
    // Шаблон иконки клана.
    "clanIcon": {
      "enabled": true,
      "x": 65, "y": 6, "width": 16, "height": 16, "align": "center", "alpha": 90, "bindToIcon": true,
      "src": "{{clanicon}}"
    },
    // Rank badge definition.
    // Шаблон иконки бэйджа.
    "rankBadgeIcon": {
      "enabled": true,
      "x": -368, "y": -1, "width": 30, "height": 30, "bindToIcon": true,
      "format": "<img src='img://gui/maps/icons/library/badges/24x24/badge_{{rankBadgeId}}.png' width='24' height='24'>"
    }
  },
  "battleLoading": {
    // Format of clock on the Battle Loading Screen.
    // Формат часов на экране загрузки боя.
    // http://php.net/date
    "clockFormat": "H:i:s",
    // true - disable Platoon/rank icons. This blank space can house, for example, clan logos.
    // true - убрать отображение иконки взвода/ранга. На пустое поле можно вывести, например, иконку клана.
    "removeSquadIcon": false,
    // true - disable rank badge icons
    // true - убрать отображение иконки бейджа ранга
    "removeRankBadgeIcon": true,
    // Opacity percentage of vehicle icon. 0 - transparent ... 100 - opaque.
    // Прозрачность в процентах иконки танка. 0 - прозрачные, 100 - не прозрачные.
    "vehicleIconAlpha": 100,
    // true - disable vehicle level indicator.
    // true - убрать отображение уровня танка.
    "removeVehicleLevel": false,
    // true - disable vehicle type icon. This space will be used for formatted vehicle field.
    // true - убрать отображение типа танка. Пустое место будет использовано под форматируемое поле.
    "removeVehicleTypeIcon": false,
    // Show border for name field (useful for config tuning)
    // Показывать рамку для поля имени игрока (полезно для настройки конфига)
    "nameFieldShowBorder": false,
    // Show border for vehicle field (useful for config tuning)
    // Показывать рамку для поля имени танка (полезно для настройки конфига)
    "vehicleFieldShowBorder": false,
    // X offset for allies squad icons
    // Смещение по оси X значка взвода союзников
    "squadIconOffsetXLeft": 1,
    // X offset for enemies squad icons
    // Смещение по оси X значка взвода противников
    "squadIconOffsetXRight": 0,
    // X offset for allies player names field
    // Смещение по оси X поля ника союзников
    "nameFieldOffsetXLeft": "{{xvm-stat?-3|-37}}",
    // X offset for enemies player names field
    // Смещение по оси X поля ника противниковеее
    "nameFieldOffsetXRight": "{{xvm-stat?-4|-36}}",
    // Width delta for allies player names field
    // Изменение ширины поля ника союзников
    "nameFieldWidthDeltaLeft": 0,
    // Width delta for enemies player names field
    // Изменение ширины поля ника противников
    "nameFieldWidthDeltaRight": 0,
    // X offset for allies vehicle names field
    // Смещение по оси X поля названия танка союзников
    "vehicleFieldOffsetXLeft": 3,
    // X offset for enemies vehicle names field
    // Смещение по оси X поля названия танка противников
    "vehicleFieldOffsetXRight": 0,
    // Width delta for allies vehicle names field
    // Изменение ширины поля названия танка союзников
    "vehicleFieldWidthDeltaLeft": 0,
    // Width delta for enemies vehicle names field
    // Изменение ширины поля названия танка противников
    "vehicleFieldWidthDeltaRight": 0,
    // X offset for allies vehicle icons
    // Смещение по оси X иконки танка союзников
    "vehicleIconOffsetXLeft": 3,
    // X offset for enemies vehicle icons
    // Смещение по оси X иконки танка противников
    "vehicleIconOffsetXRight": 0,
    // false - disable highlight of icons during battle start depends on ready state.
    // false - отключить затемнение иконки не загрузившегося игрока.
    "darkenNotReadyIcon": true,
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftNick": "<img src='xvm://res/icons/flags/{{flag|default}}.png' width='16' height='13' vspace='-1'> <img src='xvm://res/icons/xvm/xvm-user-{{xvm-user|none}}.png'> {{name%.{{xvm-stat?{{clan?9|15}}|{{clan?21|24}}}}s~..}} <font color='{{topclan?#997A3D|#838B8B}}'>{{clan}}</font>",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightNick": "<font color='{{topclan?#997A3D|#838B8B}}'>{{clan}}</font> {{name%.{{xvm-stat?{{clan?9|15}}|{{clan?21|24}}}}s~..}} <img src='xvm://res/icons/xvm/xvm-user-{{xvm-user|none}}.png'> <img src='xvm://res/icons/flags/{{flag|default}}.png' width='16' height='13' vspace='-1'>",
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftVehicle": "{{vehicle}}",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightVehicle": "{{vehicle}}",
    // Extra fields. Fields are placed one above the other.
    // Дополнительные поля. Поля располагаются друг над другом.
    // Set of formats for left panel (extended format supported, see extra-field.txt)
    // Набор форматов для левой панели (поддерживается расширенный формат, см. extra-field.txt)
    "extraFieldsLeft": [
      ${"templates.clanIcon"},
      ${"templates.rankBadgeIcon"}
    ],
    // Set of formats for right panel (extended format supported, see extra-field.txt)
    // Набор форматов для правой панели (поддерживается расширенный формат, см. extra-field.txt)
    "extraFieldsRight": [
      ${"templates.clanIcon"},
      ${"templates.rankBadgeIcon"}
    ]
  }
}