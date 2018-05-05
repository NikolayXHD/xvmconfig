/**
 * Statistics templates
 * Статистика в ангаре
 */
{
  "statistics": {
    "enabled": false,
    "layer": "normal",
    "type": "extrafield",
    "formats": [
      { // background image, left part
        // фоновая картинка, левая часть.
        "x": 66,
        "y": 160,
        "screenHAlign": "center",
        "format": "<img src='xvm://res/icons/clock/clockBg.png' width='160' height='80'>"
      },
      { // background image, right part
        // фоновая картинка, правая часть.
        "x": 390,
        "y": 160,
        "screenHAlign": "center",
        "scaleX": -1,
        "format": "<img src='xvm://res/icons/clock/clockBg.png' width='160' height='80'>"
      },
      { // text block
        // текстовый блок
        "updateEvent": "ON_MY_STAT_LOADED",
        "x": 185,
        "y": 165,
        "width": 320,
        "height": 150,
        "screenHAlign": "center",
        "shadow": { "alpha": 80, "blur": 4, "strength": 2 },
        "textFormat": { "color": "0x959688", "size": 15 },
        "format": "<font size='13'>{{l10n:General stats}} (<font color='#F9F1BC'>{{py:xvm.formatDate('%Y-%m-%d')}}</font>)</font>\n{{l10n:WN8}}: <font color='{{mystat.c_wn8}}'>{{mystat.xwn8}} ({{mystat.wn8}})</font> {{l10n:EFF}}: <font color='{{mystat.c_eff}}'>{{mystat.xeff}} ({{mystat.eff}})</font>\n{{l10n:Avg level}}: <font color='{{mystat.c_avglvl}}'>{{mystat.avglvl%.2f}}</font>\n<font size='13'>{{l10n:Wins}}: <font color='{{mystat.c_winrate}}'>{{mystat.winrate%.2f~%}}</font>  ({{py:winrate_next(0.5)}} / {{py:winrate_next(1)}})</font>"
      }
    ]
  }
}
