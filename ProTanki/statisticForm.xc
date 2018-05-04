/**
 * Parameters of the Battle Statistics form.
 * Параметры окна статистики по клавише Tab.
 */
{
  "templates": {
    // Clan icon definition.
    // Шаблон иконки клана.
    "clanIcon": {
      "enabled": true,
      "x": 65, "y": 6, "width": 16, "height": 16, "align": "center", "alpha": "{{alive?90|50}}", "bindToIcon": true,
      "src": "{{clanicon}}"
    },
    // Rank badge definition.
    // Шаблон иконки бэйджа.
    "rankBadgeIcon": {
      "enabled": true,
      "x": -377, "y": -1, "width": 30, "height": 30, "alpha": "{{alive?100|50}}", "bindToIcon": true,
      "format": "<img src='img://gui/maps/icons/library/badges/24x24/badge_{{rankBadgeId}}.png' width='24' height='24'>"
    }
  },
  "statisticForm": {
    // true - Disable Platoon/rank icons.
    // true - убрать отображение иконки взвода/ранга.
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
    // true - disable player status icon.
    // true - убрать отображение иконки статуса игрока.
    "removePlayerStatusIcon": false,
    // Show border for name field (useful for config tuning)
    // Показывать рамку для поля имени игрока (полезно для настройки конфига)
    "nameFieldShowBorder": false,
    // Show border for vehicle field (useful for config tuning)
    // Показывать рамку для поля имени танка (полезно для настройки конфига)
    "vehicleFieldShowBorder": false,
    // Show border for frags field (useful for config tuning)
    // Показывать рамку для поля фрагов (полезно для настройки конфига)
    "fragsFieldShowBorder": false,
    // X offset for allies squad icons
    // Cмещение по оси X значка взвода союзников
    "squadIconOffsetXLeft": 15,
    // X offset for enemies squad icons
    // Cмещение по оси X значка взвода противников
    "squadIconOffsetXRight": 15,
    // X offset for allies player names field
    // Cмещение по оси X поля ника союзников
    "nameFieldOffsetXLeft": "{{xvm-stat?0|-33}}",
    // X offset for enemies player names field
    // Cмещение по оси X поля ника противников
    "nameFieldOffsetXRight": "{{xvm-stat?1|-30}}",
    // Width of allies player names field
    // Ширина поля ника союзников
    "nameFieldWidthLeft": 250,
    // Width of enemies names field
    // Ширина поля ника противников
    "nameFieldWidthRight": 250,
    // X offset for "formatLeftVehicle" field
    // Cмещение по оси X поля названия танка союзников
    "vehicleFieldOffsetXLeft": 55,
    // X offset for "formatRightVehicle" field
    // Cмещение по оси X поля названия танка противников
    "vehicleFieldOffsetXRight": 36,
    // Width of "formatLeftVehicle" field
    // Ширина поля названия танка союзников
    "vehicleFieldWidthLeft": 160,
    // Width of "formatRightVehicle" field
    // Ширина поля названия танка противников
    "vehicleFieldWidthRight": 160,
    // X offset for allies vehicle icons
    // Смещение по оси X иконки танка союзников
    "vehicleIconOffsetXLeft": 31,
    // X offset for enemies vehicle icons
    // Смещение по оси X иконки танка противников
    "vehicleIconOffsetXRight": 27,
    // X offset for allies frags
    // Смещение по оси X фрагов союзников
    "fragsFieldOffsetXLeft": 20,
    // X offset for enemies frags
    // Смещение по оси X фрагов противников
    "fragsFieldOffsetXRight": 15,
    // Width of frags field for allies
    // Ширина поля фрагов союзников
    "fragsFieldWidthLeft": 30,
    // Width of frags field for enemies
    // Ширина поля фрагов противников
    "fragsFieldWidthRight": 30,
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftNick": "<img src='xvm://res/icons/flags/{{flag|default}}.png' width='16' height='13' vspace='-1'> <img src='xvm://res/icons/xvm/xvm-user-{{xvm-user|none}}.png'> {{name%.{{xvm-stat?{{clan?9|15}}|{{clan?21|24}}}}s~..}} <font color='{{topclan?#997A3D|#838B8B}}'>{{clan}}</font>",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightNick": "<font color='{{topclan?#997A3D|#838B8B}}'>{{clan}}</font> {{name%.{{xvm-stat?{{clan?9|15}}|{{clan?21|24}}}}s~..}} <img src='xvm://res/icons/xvm/xvm-user-{{xvm-user|none}}.png'> <img src='xvm://res/icons/flags/{{flag|default}}.png' width='16' height='13' vspace='-1'>",
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftVehicle": "{{vehicle}}<font face='mono' size='{{xvm-stat?13|0}}' alpha='{{alive?#FF|#99}}'> <font color='{{c:kb}}'>{{kb%2d|--}}k</font> <font color='{{c:xr}}'>{{r%4d|--}}</font> <font color='{{c:winrate}}'>{{winrate%2d|--}}%</font></font>",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightVehicle": "<font face='mono' size='{{xvm-stat?13|0}}' alpha='{{alive?#FF|#99}}'><font color='{{c:winrate}}'>{{winrate%2d|--}}%</font> <font color='{{c:xr}}'>{{r%4d|--}}</font> <font color='{{c:kb}}'>{{kb%2d|--}}k</font> </font>{{vehicle}}",
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftFrags": "{{frags}}",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightFrags": "{{frags}}",
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
