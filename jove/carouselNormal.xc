﻿/**
 * Normal carousel cells settings
 * Настройки ячеек карусели обычного размера
 */
{
  // Definitions
  // Шаблоны
  "def": {
    // Text fields shadow.
    // Тень текстовых полей.
    "textFieldShadow": { "enabled": true, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2, "distance": 0, "angle": 0 }
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
    "gap": -1,
    // Standard cell elements.
    // Стандартные элементы ячеек.
    "fields": {
      // "enabled"  - the visibility of the element / видимость элемента
      // "dx"       - horizontal shift              / смещение по горизонтали
      // "dy"       - vertical shift                / смещение по вертикали
      // "alpha"    - transparency                  / прозрачность
      // "scale"    - scale                         / масштаб
      //
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
      "tankName": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle rent info text.
      // Инфо текст аренды танка.
      "rentInfo": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Info text (Crew incomplete, Repairs required)
      // Инфо текст (Неполный экипаж, Требуется ремонт).
      "info":     { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Info text for "Buy vehicle" and "Buy slot" slots.
      // Инфо текст для слотов "Купить машину" и "Купить слот".
      "infoBuy":  { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Clan lock timer
      // Таймер блокировки танка
      "clanLock": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Price
      // Цена
      "price":    { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Action price
      // Акционная цена
      "actionPrice": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 }
    },
    // Extra cell fields (see playersPanel.xc).
    // Дополнительные поля ячеек (см. playersPanel.xc).
    "extraFields": [
      // Подложка слота
      // Slot background
      { "x": 1, "y": 1, "layer": "substrate", "width": 160, "height": 100, "bgColor": "0x0A0A0A" },
      { "x": 2,  "y": 14, "format": "<img src='img://gui/maps/icons/library/BattleResultIcon-1.png' width='14' height='14'>" },
      { "x": 22, "y": 13, "format": "<font face='$FieldFont' size='12' color='{{v.premium?#FFA759|#FFFFFF}}'>{{v.battletiermin}}-{{v.battletiermax}}</font>", "shadow": { "distance": 0, "angle": 90, "color": "0x550000", "alpha": 70, "blur": 10, "strength": 5 } },
      { "x": 103, "y": 10, "format": "<img src='img://gui/maps/icons/library/proficiency/class_icons_{{v.mastery}}.png' width='23' height='23'>" },
      { "x": 152, "y": 13, "format": "<font face='$FieldFont' size='12' color='{{v.c_winrate}}'>{{v.winrate%d~%| }}</font>", "align":"right", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 70, "blur": 2, "strength":3 } },
      { "x": 152, "y": 27, "format": "<font face='$FieldFont' size='12'><font color='{{v.c_wn8effd}}'>{{v.tdb%d~| }}</font>{{v.xte? / |}}<font color='{{v.c_xte}}'>{{v.xte%s~|}}</font></font>", "align":"right", "shadow": { "distance": 0, "angle": 90, "color": "0x000000", "alpha": 70, "blur": 2, "strength":3 } }
    ]
  }
}