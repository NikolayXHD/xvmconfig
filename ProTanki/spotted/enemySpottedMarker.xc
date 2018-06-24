{
  // Enemy spotted status marker format for substitutions in extra fields.
  // Подстановка для дополнительного поля с маркером статуса засвета
  "enemySpottedMarker": {
    // Opacity percentage of spotted markers in the panels. 0 - transparent (disabled) ... 100 - opaque.
    // Прозрачность в процентах маркеров засвета в ушах. 0 - полностью прозрачные (отключены), 100 - не прозрачные.
    "alpha": "{{a:spotted}}",
    // x position.
    // положение по горизонтали.
    "x": 0,
    // y position.
    // положение по вертикали.
    "y": 6,
    // Horizontal alignment
    // Выравнивание по горизонтали
    "align": "center",
    // true - x position is binded to vehicle icon, false - binded to edge of the screen.
    // true - положение по горизонтали отсчитывается от иконки танка, false - от края экрана.
    "bindToIcon": true,
    // enemy spotted status marker format.
    // формат маркера статуса засвета.
    "format": "<font color='{{c:spotted}}'>{{spotted}}</font>",
    // shadow (see below).
    // настройки тени (см. ниже).
    "shadow": {}
  },	
	// Text for {{spotted}} macro.
    // Текст для макроса {{spotted}}
    "spotted": {
      "neverSeen": "",
      "lost": "<font face='xvm' size='24'>&#x70;</font>",
      "spotted": "<font face='xvm' size='24'>&#x70;</font>",
      "dead": "<font face='xvm' size='24' alpha='#80'>&#x76;</font>",
      "neverSeen_arty": "",
      "lost_arty": "<font face='xvm' size='24'>&#x70;</font>",
      "spotted_arty": "<font face='xvm' size='24'>&#x70;</font>",
      "dead_arty": "<font face='xvm' size='24' alpha='#80'>&#x76;</font>"
    }
}