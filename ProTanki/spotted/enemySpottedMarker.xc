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
    "y": 10,
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
			"neverSeen": "<font face='$FieldFont' size='24' color='#DEDEDE'>*</font>",
			"lost": "<font face='$FieldFont' size='24' color='#FF3C3C'>*</font>",
			"spotted": "<font face='$FieldFont' size='24' color='#65FF3C'>*</font>",
			"dead": "",
			"neverSeen_arty": "<font face='$FieldFont' size='24' color='#DEDEDE'>*</font>",
			"lost_arty": "<font face='$FieldFont' size='24' color='#FF3C3C'>*</font>",
			"spotted_arty": "<font face='$FieldFont' size='24' color='#65FF3C'>*</font>",
			"dead_arty": ""
		}
}