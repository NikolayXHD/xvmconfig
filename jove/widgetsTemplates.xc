/**
 * Widgets templates.
 * Шаблоны виджетов.
 */
{
  "clock": {
    // Show clock in hangar.
    // Показывать часы в ангаре.
    "enabled": true,
    // layer - "bottom", "normal" (default), "top".
    // слой - "bottom", "normal" (по-умолчанию), "top".
    "layer": "normal",
    "type": "extrafield",
    "formats": [
      { // фоновая картинка
        "x": 4,
        "y": 51,
        "screenHAlign": "right",
        "format": "<img src='xvm://res/icons/clock/clockBg.png'>"
      },
      {
        "updateEvent": "ON_EVERY_FRAME",
        // Horizontal position.
        // Положение по горизонтали.
        "x": -5,
        // Vertical position.
        // Положение по вертикали.
        "y": 38,
        // Width.
        // Ширина.
        "width": 300,
        // Height.
        // Высота.
        "height": 60,
        // Horizontal alignment of field at screen ("left", "center", "right").
        // Горизонтальное выравнивание поля на экране ("left", "center", "right").
        "screenHAlign": "right",
        "shadow": {
          // false - no shadow
          // false - без тени
          "enabled": true,
          "distance": 0,             // (in pixels)     / offset distance / дистанция смещения
          "angle": 0,                // (0.0 .. 360.0)  / offset angle    / угол смещения
          "color": "0x000000",       // "0xXXXXXX"      / color           / цвет
          "alpha": 70,               // (0 .. 100)      / opacity         / прозрачность
          "blur": 4,                 // (0.0 .. 255.0)  / blur            / размытие
          "strength": 2              // (0.0 .. 255.0)  / intensity       / интенсивность
        },
        "textFormat": { "align": "right", "valign": "center", "color": "0xFFFFFF", "leading": -6 },
        "format": "<font size='23'><b>{{py:xvm.formatDate('%H:%M:%S')}}</b></font><br><font size='14'>{{py:xvm.formatDate('%Au')}}, {{py:xvm.formatDate('%d.%m.%Y')}}</font>"
      }
    ]
  }
}
