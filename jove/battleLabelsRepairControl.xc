{
  "deviceRepairCtrlItem": {
    "width": 47,
    "height": 47,
    "alpha": "{{alive?100|0}}",
    "screenHAlign": "center",
    "screenVAlign": "center",
    "hotKeyCode": 29,
    "visibleOnHotKey": true,
    "onHold": true,
    "shadow": { "distance": 1, "angle": 90, "alpha": 95, "blur": 5, "strength": 4 }
  },
  "crewHealCtrlItem": {
    "width": 33,
    "height": 33,
	"alpha": "{{alive?100|0}}",
	"screenHAlign": "center",
    "screenVAlign": "center",
    "hotKeyCode": 29,
    "visibleOnHotKey": true,
    "onHold": true,
    "shadow": { "distance": 1, "angle": 90, "alpha": 95, "blur": 5, "strength": 4 }
  },

  "repairCtrlEngine": {
    "$ref": { "path": "deviceRepairCtrlItem" },
    "enabled": true,
    "mouseEvents": {
      "click": "engine"
    },
    "updateEvent": "PY(ON_ENGINE_STATE), PY(ON_VIEW_CHANGED), ON_CURRENT_VEHICLE_DESTROYED",
    "x": -120,
    "y": "{{py:getYByOffset(-150, -45)}}",
    "format": "<img src='xvm://res/icons/devices/engine-{{py:engineState}}.png'>"
  },
  "repairCtrlAmmoBay": {
    "$ref": { "path": "deviceRepairCtrlItem" },
    "enabled": true,
    "mouseEvents": {
      "click": "ammoBay"
    },
    "updateEvent": "PY(ON_AMMOBAY_STATE), PY(ON_VIEW_CHANGED), ON_CURRENT_VEHICLE_DESTROYED",
    "x": -145,
    "y": "{{py:getYByOffset(-95, -45)}}",
    "format": "<img src='xvm://res/icons/devices/ammoBay-{{py:ammoBayState}}.png'>"
  },
  "repairCtrlGun": {
    "$ref": { "path": "deviceRepairCtrlItem" },
    "enabled": true,
    "mouseEvents": {
      "click": "gun"
    },
    "updateEvent": "PY(ON_GUN_STATE), PY(ON_VIEW_CHANGED), ON_CURRENT_VEHICLE_DESTROYED",
    "x": -145,
    "y": "{{py:getYByOffset(-40, -45)}}",
    "format": "<img src='xvm://res/icons/devices/gun-{{py:gunState}}.png'>"
   },
  "repairCtrlTurret": {
    "$ref": { "path": "deviceRepairCtrlItem" },
    "enabled": true,
    "mouseEvents": {
      "click": "turretRotator"
    },
    "updateEvent": "PY(ON_TURRET_STATE), PY(ON_VIEW_CHANGED), ON_CURRENT_VEHICLE_DESTROYED",
    "x": -120,
    "y": "{{py:getYByOffset(15, -45)}}",
    "format": "<img src='xvm://res/icons/devices/turret-{{py:turretState}}.png'>"
  },
  "repairCtrlTracks": {
    "$ref": { "path": "deviceRepairCtrlItem" },
    "enabled": true,
    "mouseEvents": {
      "click": "tracks"
    },
    "updateEvent": "PY(ON_TRACKS_STATE), PY(ON_VIEW_CHANGED), ON_CURRENT_VEHICLE_DESTROYED",
    "x": 115,
    "y": "{{py:getYByOffset(-150, -45)}}",
    "format": "<img src='xvm://res/icons/devices/chassis-{{py:tracksState}}.png'>"
  },
  "repairCtrlSurveying": {
    "$ref": { "path": "deviceRepairCtrlItem" },
    "enabled": true,
    "mouseEvents": {
      "click": "surveyingDevice"
    },
    "updateEvent": "PY(ON_SURVEYING_STATE), PY(ON_VIEW_CHANGED), ON_CURRENT_VEHICLE_DESTROYED",
    "x": 140,
    "y": "{{py:getYByOffset(-95, -45)}}",
    "format": "<img src='xvm://res/icons/devices/surveying-{{py:surveyingState}}.png'>"
  },
  "repairCtrlRadio": {
    "$ref": { "path": "deviceRepairCtrlItem" },
    "enabled": true,
    "mouseEvents": {
      "click": "radio"
    },
    "updateEvent": "PY(ON_RADIO_STATE), PY(ON_VIEW_CHANGED), ON_CURRENT_VEHICLE_DESTROYED",
    "x": 140,
    "y": "{{py:getYByOffset(-40, -45)}}",
    "format": "<img src='xvm://res/icons/devices/radio-{{py:radioState}}.png'>"
  },
  "repairCtrlFuelTank": {
    "$ref": { "path": "deviceRepairCtrlItem" },
    "enabled": true,
    "mouseEvents": {
      "click": "fuelTank"
    },
    "updateEvent": "PY(ON_FUELTANK_STATE), PY(ON_VIEW_CHANGED), ON_CURRENT_VEHICLE_DESTROYED",
    "x": 115,
    "y": "{{py:getYByOffset(15, -45)}}",
    "format": "<img src='xvm://res/icons/devices/fuelTank-{{py:fuelTankState}}.png'>"
  },

  "healCtrlCommander": {
    "$ref": { "path": "crewHealCtrlItem" },
    "enabled": true,
	//"alpha": "{{py:isInCrew('commander')?{{alive?100|0}}|0}}",
    "mouseEvents": {
      "click": "commander"
    },
    "updateEvent": "PY(ON_COMMANDER_STATE), PY(ON_VIEW_CHANGED), ON_CURRENT_VEHICLE_DESTROYED",
    "x": -80,
    "y": "{{py:getYByOffset(50, -60)}}",
    "format": "<img src='xvm://res/icons/crew/commander-{{py:commanderState}}.png'>"
  },
  "healCtrlRadioman": {
    "$ref": { "path": "crewHealCtrlItem" },
    "enabled": true,
	//"alpha": "{{py:isInCrew('radioman')?{{alive?100|0}}|0}}",
    "mouseEvents": {
      "click": "radioman"
    },
    "updateEvent": "PY(ON_RADIOMAN_STATE), PY(ON_VIEW_CHANGED), ON_CURRENT_VEHICLE_DESTROYED",
    "x": -40,
    "y": "{{py:getYByOffset(50, -60)}}",
    "format": "<img src='xvm://res/icons/crew/radioman-{{py:radiomanState}}.png'>"
  },
  "healCtrlDriver": {
    "$ref": { "path": "crewHealCtrlItem" },
    "enabled": true,
	//"alpha": "{{py:isInCrew('driver')?{{alive?100|0}}|0}}",
    "mouseEvents": {
      "click": "driver"
    },
    "updateEvent": "PY(ON_DRIVER_STATE), PY(ON_VIEW_CHANGED), ON_CURRENT_VEHICLE_DESTROYED",
    "x": 0,
    "y": "{{py:getYByOffset(50, -60)}}",
    "format": "<img src='xvm://res/icons/crew/driver-{{py:driverState}}.png'>"
  },
  "healCtrlGunner": {
    "$ref": { "path": "crewHealCtrlItem" },
    "enabled": true,
	//"alpha": "{{py:isInCrew('gunner')?{{alive?100|0}}|0}}",
    "mouseEvents": {
      "click": "gunner"
    },
    "updateEvent": "PY(ON_GUNNER_STATE), PY(ON_VIEW_CHANGED), ON_CURRENT_VEHICLE_DESTROYED",
    "x": 40,
    "y": "{{py:getYByOffset(50, -60)}}",
    "format": "<img src='xvm://res/icons/crew/gunner-{{py:gunnerState}}.png'>"
  },
  "healCtrlLoader": {
    "$ref": { "path": "crewHealCtrlItem" },
    "enabled": true,
	//"alpha": "{{py:isInCrew('loader')?{{alive?100|0}}|0}}",
    "mouseEvents": {
      "click": "loader"
    },
    "updateEvent": "PY(ON_LOADER_STATE), PY(ON_VIEW_CHANGED), ON_CURRENT_VEHICLE_DESTROYED",
    "x": 80,
    "y": "{{py:getYByOffset(50, -60)}}",
	"format": "<img src='xvm://res/icons/crew/loader-{{py:loaderState}}.png'>"
  }
}