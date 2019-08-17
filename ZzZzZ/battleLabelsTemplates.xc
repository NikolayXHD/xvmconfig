/**
 * Battle inteface text fields.
 * Текстовые поля боевого интерфейса.
 */
{
  // Definitions.
  // Шаблоны.
  "def": {
    // Header of the log of applied damage.
    // Заголовок лога нанесенного урона.
    "hitLogHeader": {
      "enabled": false,
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY), ON_PANEL_MODE_CHANGED",
      "x": "{{pp.mode=0?{{battletype-key=epic_battle?240|5}}|{{py:sum({{pp.widthLeft}},50)}}}}",
      "y": "{{pp.mode=0?{{battletype-key=epic_battle?55|65}}|35}}",
      "width": 300,
      "height": 22,
      "textFormat": { "color": "0xF4EFE8", "size": 15 },
      "format": "{{py:xvm.totalDamage=0?{{l10n:Hits}}: <font size='13'>#0</font>|{{l10n:Hits}}: <font size='13'>#{{py:xvm.numberHitsDealt}}</font> {{l10n:Total}}: <font color='{{py:xvm.totalDamageColor}}'><b>{{py:xvm.totalDamage}}</b></font> {{l10n:Last}}: <font color='{{py:xvm.dmgKindColor}}'><b>{{py:xvm.dmg}}</b></font>}}"
    },
    // Log of applied damage (see hitLog.xc).
    // Лог нанесенного урона (см. hitLog.xc).
    "hitLogBody": {
      "enabled": true,
      "updateEvent": "PY(ON_HIT_LOG), ON_PANEL_MODE_CHANGED",
      "x": "{{pp.mode=0?{{battletype-key=epic_battle?240|5}}|{{py:sum({{pp.widthLeft}},{{py:xvm.hitLog.log.x}})}}}}",
      "y": "{{pp.mode=0?{{battletype-key=epic_battle?80|90}}|{{py:xvm.hitLog.log.y}}}}",
      "width": 500,
      "height": 1000,
      "layer": "bottom",
      "textFormat": { "color": "0xF4EFE8", "size": 15 },
      "format": "{{py:xvm.hitLog.log}}",
      "mouseEvents": {
        "mouseDown": "hitLog_mouseDown",
        "mouseUp": "hitLog_mouseUp",
        "mouseMove": "hitLog_mouseMove"
      }
    },
    // Background of the log of applied damage.
    // Подложка лога нанесенного урона.
    "hitLogBackground": {
      "enabled": false,
      "$ref": { "path":"def.hitLogBody" },
      "format": "{{py:xvm.hitLog.log.bg}}"
    },
    "totalEfficiency": {
      "enabled": true,
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY), ON_PANEL_MODE_CHANGED",
      "x": "{{pp.mode=0?{{battletype-key=epic_battle?240|5}}|{{py:sum({{pp.widthLeft}},50)}}}}",
      "y": "{{pp.mode=0?{{battletype-key=epic_battle?55|65}}|35}}",
      "width": "{{py:xvm.isStuns?350|260}}",
      "height": 22,
      "textFormat": { "size": 16 },
      "format": "<font color='#FFFFFF'>\u00D7 {{py:xvm.numberHitsDealt}} | <font color='{{py:xvm.totalDamage>0?{{py:xvm.totalDamageColor}}}}'>{{py:xvm.totalDamage}}</font> | <font color='{{c:dmg-kind}}'>{{py:xvm.dmg}}</font>"
    },
    // Total hp indicator.
    // Индикатор общего HP команд.
    "totalHP": {
      "enabled": false,
      "updateEvent": "PY(ON_UPDATE_HP)",
      "x": 0,
      "y": 30,
      "screenHAlign": "center",
      "align": "center",
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 1.5 },
      "textFormat": { "font": "mono", "size": 18, "align": "center" },
      "format": "{{battletype-key!=epic_battle?{{py:xvm.total_hp.text}}}}"
    },
    // Avg damage on current vehicle.
    // Средний урон на текущей технике.
    "avgDamage": {
      "enabled": false,
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY)",
      "x": -170,
      "y": 30,
      "screenHAlign": "center",
      "align": "right",
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 1.5 },
      "textFormat": { "size": 15, "align": "center" },
      "format": "{{py:xvm.total_hp.avgDamage('{{l10n:avgDamage}}: ',{{py:xvm.totalDamage}})}}"
    },
    // Threshold necessary for achievements "High caliber".
    // Порог необходимый для получения достижения "Основной калибр".
    "mainGun": {
      "enabled": false,
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY)",
      "x": 170,
      "y": 30,
      "screenHAlign": "center",
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 1.5 },
      "textFormat": { "size": 15, "align": "center" },
      "format": "{{py:xvm.total_hp.mainGun('{{l10n:mainGun}}: ',{{py:xvm.totalDamage}})}}"
    },
    // Log of the received damage (see damageLog.xc).
    // Лог полученного урона (см. damageLog.xc).
    "damageLog": {
      "enabled": false,
      "updateEvent": "PY(ON_HIT)",
      "x": "{{py:xvm.damageLog.log.x}}",
      "y": "{{py:xvm.damageLog.log.y}}",
      "width": 300,
      "height": 210,
      "layer": "bottom",
      "screenVAlign": "bottom",
      "shadow": {
        "distance": "{{py:xvm.damageLog.log.shadow('distance')}}",
        "angle": "{{py:xvm.damageLog.log.shadow('angle')}}",
        "color": "{{py:xvm.damageLog.log.shadow('color')}}",
        "alpha": "{{py:xvm.damageLog.log.shadow('alpha')}}",
        "blur": "{{py:xvm.damageLog.log.shadow('blur')}}",
        "strength": "{{py:xvm.damageLog.log.shadow('strength')}}",
        "hideObject": "{{py:xvm.damageLog.log.shadow('hideObject')}}",
        "inner": "{{py:xvm.damageLog.log.shadow('inner')}}",
        "knockout": "{{py:xvm.damageLog.log.shadow('knockout')}}",
        "quality": "{{py:xvm.damageLog.log.shadow('quality')}}"
      },
      "textFormat": { "color": "0xF4EFE8", "size": 16 },
      "format": "{{py:xvm.damageLog.log}}",
      "mouseEvents": {
        "mouseDown": "damageLog_mouseDown",
        "mouseUp": "damageLog_mouseUp",
        "mouseMove": "damageLog_mouseMove",
        "mouseWheel": "damageLog_mouseWheel"
      }
    },
    // Background of the log of the received damage (see damageLog.xc).
    // Подложка лога полученного урона (см. damageLog.xc).
    "damageLogBackground": {
      "enabled": false,
      "$ref": { "path":"def.damageLog" },
      "format": "{{py:xvm.damageLog.log.bg}}"
    },
    // Display the last damage (hit) (see damageLog.xc).
    // Отображение последнего урона (попадания) (см. damageLog.xc).
    "lastHit": {
      "enabled": false,
      "updateEvent": "PY(ON_LAST_HIT)",
      "tweens": [
        // "damageLog"/"timeDisplayLastHit"
        [ "fromTo", 0.75, { "scaleX": 0, "scaleY": 0 }, { "scaleX": 1, "scaleY": 1 } ],
        [ "delay", 3.75 ],
        [ "fromTo", 0.5, { "scaleX": 1, "scaleY": 1 }, { "scaleX": 0, "scaleY": 0 } ]
      ],
      "x": "{{py:xvm.damageLog.lastHit.x}}",
      "y": "{{py:xvm.damageLog.lastHit.y}}",
      "width": 200,
      "height": 100,
      "layer": "bottom",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "shadow": {
        "distance": "{{py:xvm.damageLog.lastHit.shadow('distance')}}",
        "angle": "{{py:xvm.damageLog.lastHit.shadow('angle')}}",
        "color": "{{py:xvm.damageLog.lastHit.shadow('color')}}",
        "alpha": "{{py:xvm.damageLog.lastHit.shadow('alpha')}}",
        "blur": "{{py:xvm.damageLog.lastHit.shadow('blur')}}",
        "strength": "{{py:xvm.damageLog.lastHit.shadow('strength')}}",
        "hideObject": "{{py:xvm.damageLog.lastHit.shadow('hideObject')}}",
        "inner": "{{py:xvm.damageLog.lastHit.shadow('inner')}}",
        "knockout": "{{py:xvm.damageLog.lastHit.shadow('knockout')}}",
        "quality": "{{py:xvm.damageLog.lastHit.shadow('quality')}}"
      },
      "textFormat": { "align": "center", "color": "0xF4EFE8", "size": 16 },
      "format": "{{py:xvm.damageLog.lastHit}}",
      "mouseEvents": {
        "mouseDown": "lastHit_mouseDown",
        "mouseUp": "lastHit_mouseUp",
        "mouseMove": "lastHit_mouseMove"
      }
    },
    "fire": {
      "enabled": false,
      "updateEvent": "PY(ON_FIRE)",
      "x": 120,
      "y": 200,
      "width": 200,
      "height": 100,
      "alpha": "{{py:xvm.damageLog.fire}}",
      "layer": "bottom",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 3 },
      "textFormat": { "align": "center", "color": "0xF4EFE8", "size": 16 },
      "format": "ПОЖАР"
    },
    // Rewritable timer format.
    // Перезаписываемый формат таймера.
    "repairTimeItem": {
      "width": 47,
      "height": 40,
      "screenHAlign": "left",
      "screenVAlign": "bottom",
      "shadow": { "distance": 1, "angle": 90, "alpha": 90, "blur": 5, "strength": 4 },
      "textFormat": { "color": "0xF4EFE8", "size": 17, "align": "center", "valign": "center" }
    },
    // Repair timer for engine.
    // Таймер ремонта двигателя.
    "repairTimeEngine": {
      "$ref": { "path":"def.repairTimeItem" },
      "enabled": true,
      "updateEvent": "PY(ON_ENGINE_UPDATE)",
      "x": 4,
      "y": -147,
      "format": "<b>{{py:repairTimeEngine}}</b>"
    },
    // Repair timer for gun.
    // Таймер ремонта орудия.
    "repairTimeGun": {
      "$ref": { "path":"def.repairTimeItem" },
      "enabled": true,
      "updateEvent": "PY(ON_GUN_UPDATE)",
      "x": 4,
      "y": -69,
      "format": "<b>{{py:repairTimeGun}}</b>"
    },
    // Repair timer for turret rotator.
    // Таймер ремонта механизма поворота башни.
    "repairTimeTurret": {
      "$ref": { "path":"def.repairTimeItem" },
      "enabled": true,
      "updateEvent": "PY(ON_TURRETROTATOR_UPDATE)",
      "x": 4,
      "y": -30,
      "format": "<b>{{py:repairTimeTurret}}</b>"
    },
    // Repair timer for complex-items (chassis\wheels).
    // Таймер ремонта для гусениц\колёс.
    "repairTimeComplex": {
      "$ref": { "path":"def.repairTimeItem" },
      "enabled": true,
      "updateEvent": "PY(ON_COMPLEX_UPDATE)",
      "x": 177,
      "y": -147,
      "format": "<b>{{py:repairTimeComplex}}</b>"
    },
    // Repair timer for surveying device.
    // Таймер ремонта приборов наблюдения.
    "repairTimeSurveying": {
      "$ref": { "path":"def.repairTimeItem" },
      "enabled": true,
      "updateEvent": "PY(ON_SURVEYINGDEVICE_UPDATE)",
      "x": 177,
      "y": -108,
      "format": "<b>{{py:repairTimeSurveying}}</b>"
    },
    // Repair timer for radio.
    // Таймер ремонта радиостанции.
    "repairTimeRadio": {
      "$ref": { "path":"def.repairTimeItem" },
      "enabled": true,
      "updateEvent": "PY(ON_RADIO_UPDATE)",
      "x": 177,
      "y": -69,
      "format": "<b>{{py:repairTimeRadio}}</b>"
    },
    "deviceRepairCtrlItem": {
      "width": 48,
      "height": 48,
      "screenHAlign": "center",
      "screenVAlign": "center",
      "layer": "top",
      "hotKeyCode": 29,
      "visibleOnHotKey": true,
      "onHold": true,
      "shadow": { "distance": 1, "angle": 90, "alpha": 95, "blur": 5, "strength": 4 }
    },
    "crewHealCtrlItem": {
      "width": 36,
      "height": 36,
      "screenHAlign": "center",
      "screenVAlign": "center",
      "layer": "top",
      "hotKeyCode": 29,
      "visibleOnHotKey": true,
      "onHold": true,
      "shadow": { "distance": 1, "angle": 90, "alpha": 95, "blur": 5, "strength": 4 }
    },
    "repairCtrlEngine": {
      "$ref": { "path": "def.deviceRepairCtrlItem" },
      "enabled": true,
      "mouseEvents": {
        "click": "engine",
        "mouseOver": "engineOver",
        "mouseOut": "engineOut"
      },
      "updateEvent": "PY(ON_ENGINE_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
      "x": -61,
      "y": "{{py:repairControl.getYWOffset(-165, -45)}}",
      "alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.engineState=normal?30|{{py:repairControl.engineState=critical?70|{{py:repairControl.engineState=destroyed?70|90}}}}}}|0}}",
      "format": "<img src='xvm://res/icons/devices/engine-{{py:repairControl.engineState}}.png'>"
    },
    "repairCtrlAmmoBay": {
      "$ref": { "path": "def.deviceRepairCtrlItem" },
      "enabled": true,
      "mouseEvents": {
        "click": "ammoBay",
        "mouseOver": "ammoBayOver",
        "mouseOut": "ammoBayOut"
      },
      "updateEvent": "PY(ON_AMMOBAY_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
      "x":-98,
      "y": "{{py:repairControl.getYWOffset(-112, -45)}}",
      "alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.ammoBayState=normal?30|{{py:repairControl.ammoBayState=critical?70|90}}}}|0}}",
      "format": "<img src='xvm://res/icons/devices/ammoBay-{{py:repairControl.ammoBayState}}.png'>"
    },
    "repairCtrlGun": {
      "$ref": { "path": "def.deviceRepairCtrlItem" },
      "enabled": true,
      "mouseEvents": {
        "click": "gun",
        "mouseOver": "gunOver",
        "mouseOut": "gunOut"
      },
      "updateEvent": "PY(ON_GUN_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
      "x": -98,
      "y": "{{py:repairControl.getYWOffset(-52, -45)}}",
      "alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.gunState=normal?30|{{py:repairControl.gunState=critical?70|{{py:repairControl.gunState=destroyed?70|90}}}}}}|0}}",
      "format": "<img src='xvm://res/icons/devices/gun-{{py:repairControl.gunState}}.png'>"
    },
    "repairCtrlTurret": {
      "$ref": { "path": "def.deviceRepairCtrlItem" },
      "enabled": true,
      "mouseEvents": {
        "click": "turretRotator",
        "mouseOver": "turretRotatorOver",
        "mouseOut": "turretRotatorOut"
      },
      "updateEvent": "PY(ON_TURRETROTATOR_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
      "x": -61,
      "y": "{{py:repairControl.getYWOffset(0, -45)}}",
      "alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.turretState=normal?30|{{py:repairControl.turretState=critical?70|{{py:repairControl.turretState=destroyed?70|90}}}}}}|0}}",
      "format": "<img src='xvm://res/icons/devices/turret-{{py:repairControl.turretState}}.png'>"
    },
    "repairCtrlComplex": {
      "$ref": { "path": "def.deviceRepairCtrlItem" },
      "enabled": true,
      "mouseEvents": {
        "click": "complex",
        "mouseOver": "complexOver",
        "mouseOut": "complexOut"
      },
      "updateEvent": "PY(ON_COMPLEX_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
      "x": 61,
      "y": "{{py:repairControl.getYWOffset(-165, -45)}}",
      "alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.complexState=normal?30|{{py:repairControl.complexState=critical?70|{{py:repairControl.complexState=destroyed?70|90}}}}}}|0}}",
      "format": "<img src='xvm://res/icons/devices/{{py:repairControl.complexType}}-{{py:repairControl.complexState}}.png'>"
    },
    "repairCtrlSurveying": {
      "$ref": { "path": "def.deviceRepairCtrlItem" },
      "enabled": true,
      "mouseEvents": {
        "click": "surveyingDevice",
        "mouseOver": "surveyingDeviceOver",
        "mouseOut": "surveyingDeviceOut"
      },
      "updateEvent": "PY(ON_SURVEYINGDEVICE_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
      "x": 98,
      "y": "{{py:repairControl.getYWOffset(-112, -45)}}",
      "alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.surveyingState=normal?30|{{py:repairControl.surveyingState=critical?70|{{py:repairControl.surveyingState=destroyed?70|90}}}}}}|0}}",
      "format": "<img src='xvm://res/icons/devices/surveying-{{py:repairControl.surveyingState}}.png'>"
    },
    "repairCtrlRadio": {
      "$ref": { "path": "def.deviceRepairCtrlItem" },
      "enabled": true,
      "mouseEvents": {
        "click": "radio",
        "mouseOver": "radioOver",
        "mouseOut": "radioOut"
      },
      "updateEvent": "PY(ON_RADIO_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
      "x": 98,
      "y": "{{py:repairControl.getYWOffset(-52, -45)}}",
      "alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.radioState=normal?30|{{py:repairControl.radioState=critical?70|{{py:repairControl.radioState=destroyed?70|90}}}}}}|0}}",
      "format": "<img src='xvm://res/icons/devices/radio-{{py:repairControl.radioState}}.png'>"
    },
    "repairCtrlFuelTank": {
      "$ref": { "path": "def.deviceRepairCtrlItem" },
      "enabled": true,
      "mouseEvents": {
        "click": "fuelTank",
        "mouseOver": "fuelTankOver",
        "mouseOut": "fuelTankOut"
      },
      "updateEvent": "PY(ON_FUELTANK_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
      "x": 61,
      "y": "{{py:repairControl.getYWOffset(0, -45)}}",
      "alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.fuelTankState=normal?30|{{py:repairControl.fuelTankState=critical?70|{{py:repairControl.fuelTankState=destroyed?70|90}}}}}}|0}}",
      "format": "<img src='xvm://res/icons/devices/fuelTank-{{py:repairControl.fuelTankState}}.png'>"
    },
    "healCtrlCommander": {
      "$ref": { "path": "def.crewHealCtrlItem" },
      "enabled": true,
      "mouseEvents": {
        "click": "commander",
        "mouseOver": "commanderOver",
        "mouseOut": "commanderOut"
      },
      "updateEvent": "PY(ON_COMMANDER_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
      "x": -80,
      "y": "{{py:repairControl.getYWOffset(55, -45)}}",
      "alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.commanderState=normal?30|{{py:repairControl.commanderState=destroyed?70|90}}}}|0}}",
      "format": "<img src='xvm://res/icons/crew/commander-{{py:repairControl.commanderState}}.png'>"
    },
    "healCtrlRadioman": {
      "$ref": { "path": "def.crewHealCtrlItem" },
      "enabled": true,
      "mouseEvents": {
        "click": "radioman",
        "mouseOver": "radiomanOver",
        "mouseOut": "radiomanOut"
      },
      "updateEvent": "PY(ON_RADIOMAN_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
      "x": -40,
      "y": "{{py:repairControl.getYWOffset(55, -45)}}",
      "alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.radiomanState=normal?30|{{py:repairControl.radiomanState=destroyed?70|90}}}}|0}}",
      "format": "<img src='xvm://res/icons/crew/radioman-{{py:repairControl.radiomanState}}.png'>"
    },
    "healCtrlDriver": {
      "$ref": { "path": "def.crewHealCtrlItem" },
      "enabled": true,
      "mouseEvents": {
        "click": "driver",
        "mouseOver": "driverOver",
        "mouseOut": "driverOut"
      },
      "updateEvent": "PY(ON_DRIVER_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
      "x": 0,
      "y": "{{py:repairControl.getYWOffset(55, -45)}}",
      "alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.driverState=normal?30|{{py:repairControl.driverState=destroyed?70|90}}}}|0}}",
      "format": "<img src='xvm://res/icons/crew/driver-{{py:repairControl.driverState}}.png'>"
    },
    "healCtrlGunner": {
      "$ref": { "path": "def.crewHealCtrlItem" },
      "enabled": true,
      "mouseEvents": {
        "click": "gunner",
        "mouseOver": "gunnerOver",
        "mouseOut": "gunnerOut"
      },
      "updateEvent": "PY(ON_GUNNER_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
      "x": 40,
      "y": "{{py:repairControl.getYWOffset(55, -45)}}",
      "alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.gunnerState=normal?30|{{py:repairControl.gunnerState=destroyed?70|90}}}}|0}}",
      "format": "<img src='xvm://res/icons/crew/gunner-{{py:repairControl.gunnerState}}.png'>"
    },
    "healCtrlLoader": {
      "$ref": { "path": "def.crewHealCtrlItem" },
      "enabled": true,
      "mouseEvents": {
        "click": "loader",
        "mouseOver": "loaderOver",
        "mouseOut": "loaderOut"
      },
      "updateEvent": "PY(ON_LOADER_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
      "x": 80,
      "y": "{{py:repairControl.getYWOffset(55, -45)}}",
      "alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.loaderState=normal?30|{{py:repairControl.loaderState=destroyed?70|90}}}}|0}}",
      "format": "<img src='xvm://res/icons/crew/loader-{{py:repairControl.loaderState}}.png'>"
    }
  }
}
