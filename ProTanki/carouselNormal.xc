/**
 * Normal carousel cells settings
 * Настройки ячеек карусели обычного размера
 */
{
  // Definitions
  // Шаблоны
  "def": {
    // Text fields shadow.
    // Тень текстовых полей.
    "textFieldShadow": { "enabled": true, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 3, "distance": 0, "angle": 0 }
  },
  "normal": {
    // Cell width
    // Ширина ячейки
    "width": 160,
    // Cell height
    // Высота ячейки
    "height": 100,
    // Spacing between carousel cells.
    // Отступ между ячейками карусели.
    "gap": 10,
    // Standard cell elements.
    // Стандартные элементы ячеек.
    "fields": {
      // "enabled"  - the visibility of the element / видимость элемента
      // "dx"       - horizontal shift              / смещение по горизонтали
      // "dy"       - vertical shift                / смещение по вертикали
      // "alpha"    - transparency                  / прозрачность
      // "scale"    - scale                         / масштаб
      //
      // Nation flag.
      // Флаг нации.
      "flag": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle icon.
      // Иконка танка.
      "tankIcon": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle class icon.
      // Иконка типа техники.
      "tankType": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle level.
      // Уровень техники
      "level":    { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Double XP icon
      // Иконка не сбитого опыта за первую победу в день.
      "xp":       { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle name.
      // Название танка.
      "tankName": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      // Vehicle rent info text.
      // Инфо текст аренды танка.
      "rentInfo": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      // Info text (Crew incomplete, Repairs required)
      // Инфо текст (Неполный экипаж, Требуется ремонт).
      "info":     { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      // Info image
      // Инфо иконка
      "infoImg":  { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Info text for "Buy vehicle" and "Buy slot" slots.
      // Инфо текст для слотов "Купить машину" и "Купить слот".
      "infoBuy":  { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      // Clan lock timer
      // Таймер блокировки танка
      "clanLock": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Price
      // Цена
      "price":    { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Action price
      // Акционная цена
      "actionPrice": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Favorite vehicle mark
      // Маркер основной техники
      "favorite": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Stats field that appears on the mouse hover
      // Поле статистики, отображаемое при наведении мыши
      "stats": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "textFormat": {}, "shadow": {} }
    },
    // Extra cell fields (extended format supported, see extra-field.txt).
    // Дополнительные поля ячеек (поддерживается расширенный формат, см. extra-field.txt).
    "extraFields": [
      // Slot background
      // Подложка слота
      { "x": 1, "y": 1, "layer": "substrate", "width": 160, "height": 100, "bgColor": "0x0A0A0A" },
      // Процент побед.
      {"enabled": ${"carousel/carouselWin.xc":"enabled"}, "x": 22, "y": 14, "format": "<font face='$FieldFont' size='12' color='{{v.c_winrate}}'>{{v.winrate%d~%| }}</font>", "shadow": ${ "def.textFieldShadow" }},
      // Средний урон.
      {"enabled": ${"carousel/carouselDmg.xc":"enabled"}, "x": 2,  "y": 78, "alpha": "{{v.tdb?|0}}", "format": "<img src='img://gui/maps/icons/tankmen/skills/big/gunner_sniper.png' width='17' height='17'>"},
      {"enabled": ${"carousel/carouselDmg.xc":"enabled"}, "x": 22, "y": 79, "format": "<font face='$FieldFont' size='12' color='{{v.c_wn8effd}}'>{{v.tdb%4d}}</font>", "shadow": ${ "def.textFieldShadow" }},
      // Эффективность на танке.
      {"enabled": ${"carousel/carouselxTE.xc":"enabled"}, "x": 2,  "y": 60, "alpha": "{{v.xte?|0}}", "format": "<img src='img://gui/maps/icons/tankmen/skills/big/brotherhood.png' width='17' height='17'>"},
      {"enabled": ${"carousel/carouselxTE.xc":"enabled"}, "x": 22, "y": 62, "format": "<font face='$FieldFont' size='12' color='{{v.c_xte}}'>{{v.xte%2d}}</font>", "shadow": ${ "def.textFieldShadow" }},
      // Уровень боев.
      {"enabled": ${"carousel/carouselTier.xc":"enabled"}, "x": 115,  "y": 64, "format": "<img src='img://gui/maps/icons/library/BattleResultIcon-1.png' width='14' height='14'>"},
      {"enabled": ${"carousel/carouselTier.xc":"enabled"}, "x": 130,  "y": 62, "format": "<font face='$FieldFont' size='12' color='#CCCCCC'>{{v.battletiermin}}-{{v.battletiermax}}</font>", "shadow": ${ "def.textFieldShadow" }},
	  // Отметки на стволе.
      {"enabled": ${"carousel/carouselDmgR.xc":"enabled"}, "x": 105,  "y": 12, "alpha": "{{v.damageRating?|0}}", "format": "<img src='img://gui/maps/icons/library/complete.png' width='20' height='20'>"},
      {"enabled": ${"carousel/carouselDmgR.xc":"enabled"}, "x": 124,  "y": 14, "format": "<font face='$FieldFont' size='12' color='{{v.c_damageRating}}'>{{v.damageRating%2.01f~%}}</font>", "shadow": ${ "def.textFieldShadow"}},
      // Sign of mastery.
      // Знак мастерства.
      {"enabled": true, "x": -1, "y": 11, "format": "<img src='img://gui/maps/icons/library/proficiency/class_icons_{{v.mastery}}.png' width='23' height='23'>" }
    ]
  }
}