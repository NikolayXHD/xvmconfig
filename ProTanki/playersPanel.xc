/**
 * Parameters of the Players Panels ("ears").
 * Параметры панелей игроков ("ушей").
 */
{
  // Definitions (extended format supported, see extra-field.txt).
  // Шаблоны (поддерживается расширенный формат, см. extra-field.txt).
  "def": {
    // Clan icon.
    // Иконка клана.
    "clanIcon": {
      "enabled": true,
      "x": 65, "y": 6, "width": 16, "height": 16, "align": "center", "alpha": 90, "bindToIcon": true,
      "src": "{{clanicon}}"
      //"format": "<img src='{{clanicon}}' width='16' height='16'>"
    },
    // XVM user marker.
    // Маркер пользователя XVM.
    "xvmUserMarker": {
      "enabled": false,
      "x": 10, "y": 5, "bindToIcon": true,
      "src": "xvm://res/icons/xvm/xvm-user-{{xvm-user|none}}.png"
	}
  },
  // Parameters of the Players Panels ("ears").
  // Параметры панелей игроков ("ушей").
  "playersPanel": {
    // false - disable.
    // false - отключить.
    "enabled": true,
    // Opacity percentage of the panels. 0 - transparent, 100 - opaque.
    // Прозрачность в процентах ушей. 0 - прозрачные, 100 - не прозрачные.
    "alpha": 60,
    // Opacity percentage of icons in the panels. 0 - transparent ... 100 - opaque.
    // Прозрачность в процентах иконок в ушах. 0 - прозрачные, 100 - не прозрачные.
    "iconAlpha": 100,
    // true - disable background of the selected player.
    // true - убрать подложку выбранного игрока.
    "removeSelectedBackground": false,
    // true - remove the Players Panel mode switcher (buttons for changing size).
    // true - убрать переключатель режимов ушей мышкой.
    "removePanelsModeSwitcher": false,
    // Start panels mode. Possible values: "none", "short", "medium", "medium2", "large".
    // Начальный режим ушей. Возможные значения: "none", "short", "medium", "medium2", "large".
    "startMode": "medium2",
    // Alternative panels mode. Possible values: null, "none", "short", "medium", "medium2", "large".
    // Альтернативный режим ушей. Возможные значения: null, "none", "short", "medium", "medium2", "large".
    "altMode": "medium",
    // Options for the "none" panels - empty panels.
    // Режим ушей "none" - пустые уши.
    "none": {
      // false - disable (отключить)
      "enabled": true,
      // Width of area for switching to "large" mode on mouse over
      // Ширина области переключения в режим "large" при наведении мыши
      "expandAreaWidth": 230,
      // Layout ("vertical" or "horizontal")
      // Размещение ("vertical" - вертикально, или "horizontal" - горизонтально)
      "layout": "vertical",
      // true - don't change players positions on dead (default false)
      // true - не изменять позиции игроков при уничтожении (по умолчанию false)
      "fixedPosition": false,
      // Opacity of dynamic squad invite indicator
      // Прозрачность индикатора приглашения в динамический взвод
      "inviteIndicatorAlpha": 100,
      // X position offset of dynamic squad invite indicator
      // Позиция X индикатора приглашения в динамический взвод
      "inviteIndicatorX": 0,
      // Y position offset of dynamic squad invite indicator
      // Позиция Y индикатора приглашения в динамический взвод
      "inviteIndicatorY": 0,
      // Extra fields.
      // Дополнительные поля.
      "extraFields": {
        "leftPanel": {
          "x": 0, // from left side of screen
          "y": 65,
          "width": 350,
          "height": 25,
          // Set of formats for left panel
          // Набор форматов для левой панели
          // example:
          // "formats": [
          //   // simple format (just a text)
          //   "{{nick}}",
          //   "<img src='xvm://res/img/panel-bg-l-{{alive|dead}}.png' width='318' height='28'>",
          //   // extended format
          //   { "x": 20, "y": 10, "borderColor": "0xFFFFFF", "format": "{{nick}}" },
          //   { "x": 200, "src": "xvm://res/contour/{{vehiclename}}.png" },
          //   { "x": 200, "src": "img://gui/maps/icons/vehicle/{{vehiclename}}.png" }
          //   { "x": 200, "src": "cfg://user/img/{{vehiclename}}.png" }
          // ]
          //
          // * all fields are optional
          //
          "formats": []
        },
        "rightPanel": {
          "x": 0, // from right side of screen
          "y": 65,
          "width": 350,
          "height": 25,
          // Set of formats for right panel (extended format supported, see above)
          // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
          "formats": []
        }
      }
    },
    // Options for the "short" panels - panels with frags and vehicle icon.
    // Режим ушей "short" - короткие уши (фраги и иконка танка).
	"short": ${"playersPanel/playersPanelHP.xc":"short"},
    // Options for the "medium" panels - the first of the medium panels.
    // Режим ушей "medium" - первые средние уши в игре.
	"medium": ${"playersPanel/playersPanelHP.xc":"medium"},
	// Options for the "medium2" panels - the second of the medium panels.
    // Режим ушей "medium2" - вторые средние уши в игре.
	"medium2": ${"playersPanel/playersPanelHP.xc":"medium2"},
    // Options for the "large" panels - the widest panels.
    // Режим ушей "large" - широкие уши в игре.
	"large": ${"playersPanel/playersPanelHP.xc":"large"}
  }
}
