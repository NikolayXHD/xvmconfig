from Avatar import PlayerAvatar
from xfw import registerEvent, as_event, as_callback, log
from gui.battle_control.battle_constants import VEHICLE_DEVICES, CROSSHAIR_VIEW_ID
from gui.Scaleform.daapi.view.battle.shared.crosshair.plugins import TargetDistancePlugin
from gui.Scaleform.daapi.view.battle.shared.consumables_panel import ConsumablesPanel
from gui.Scaleform.daapi.view.battle.shared.damage_panel import DamagePanel

ENGINE = VEHICLE_DEVICES[0]
AMMOBAY = VEHICLE_DEVICES[1]
GUN = VEHICLE_DEVICES[2]
TURRET = VEHICLE_DEVICES[3]
TRACKS = 'tracks'
LEFTTRACK = VEHICLE_DEVICES[4]
RIGHTTRACK = VEHICLE_DEVICES[5]
SURVEYING = VEHICLE_DEVICES[6]
RADIO = VEHICLE_DEVICES[7]
FUELTANK = VEHICLE_DEVICES[8]

DEVICES = [
    ENGINE, AMMOBAY, GUN, TURRET, TRACKS, LEFTTRACK, RIGHTTRACK, SURVEYING, RADIO, FUELTANK
]

COMMANDER = 'commander'
RADIOMAN = 'radioman'
DRIVER = 'driver'
GUNNER = 'gunner'
LOADER = 'loader'

CREW = [
    COMMANDER, RADIOMAN, DRIVER, GUNNER, LOADER
]

EVENTS = {
    'onViewChanged': 'ON_VIEW_CHANGED',
    'onCrewCounted': 'ON_CREW_COUNTED',
    ENGINE: 'ON_ENGINE_STATE',
    AMMOBAY: 'ON_AMMOBAY_STATE',
    GUN: 'ON_GUN_STATE',
    TURRET: 'ON_TURRET_STATE',
    TRACKS: 'ON_TRACKS_STATE',
    LEFTTRACK: 'ON_TRACKS_STATE',
    RIGHTTRACK: 'ON_TRACKS_STATE',
    SURVEYING: 'ON_SURVEYING_STATE',
    RADIO: 'ON_RADIO_STATE',
    FUELTANK: 'ON_FUELTANK_STATE',
    COMMANDER: 'ON_COMMANDER_STATE',
    RADIOMAN: 'ON_RADIOMAN_STATE',
    DRIVER: 'ON_DRIVER_STATE',
    GUNNER: 'ON_GUNNER_STATE',
    LOADER: 'ON_LOADER_STATE'
}

STATES = {
    ENGINE: 'normal',
    AMMOBAY: 'normal',
    GUN: 'normal',
    TURRET: 'normal',
    LEFTTRACK: 'normal',
    RIGHTTRACK: 'normal',
    SURVEYING: 'normal',
    RADIO: 'normal',
    FUELTANK: 'normal',
    COMMANDER: 'normal',
    RADIOMAN: 'normal',
    DRIVER: 'normal',
    GUNNER: 'normal',
    LOADER: 'normal'
}

REPAIRS = {
    'extinguisher': 251,
    'med_kit': 763,
    'repair_kit': 1275,
    'g_repair_kit': 1531,
    'g_med_kit': 1019
}

crewRoles = None
crewContusion = None
consumablesPanel = None
crosshairViewID = None
lastDestroyedTrack = None

def _resetAll():
    global STATES, EVENTS, crewRoles, crewContusion, consumablesPanel, crosshairViewID, lastDestroyedTrack
    crewRoles = None
    crewContusion = None
    consumablesPanel = None
    crosshairViewID = None
    lastDestroyedTrack = None
    for obj in [DEVICES, CREW]:
        for item in obj:
            STATES[item] = 'normal'
            as_event(EVENTS[item])

def _getTankmanWOIndex(_tankman):
    return _tankman.replace('1', '').replace('2', '')

#def _getTankmanWIndex(_tankman):
#    if (_tankman in [RADIOMAN, DRIVER, GUNNER, LOADER]) and (crewRoles is not None):
#        for tankman in crewRoles:
#            if _getTankmanWOIndex(tankman) == _tankman:
#                return tankman
#    else:
#        return _tankman

def _getContusedTankmanWIndex(_tankman):
    if (_tankman in [RADIOMAN, DRIVER, GUNNER, LOADER]) and (crewContusion is not None):
        for tankman in crewContusion:
            if _getTankmanWOIndex(tankman) == _tankman:
                return tankman
    else:
        return _tankman

#REPAIRCONTROL

def getCrewState(crew):
    return STATES[crew]

def getDeviceState(device):
    if device == TRACKS:
        if lastDestroyedTrack is not None:
            return STATES[lastDestroyedTrack]
        else:
            if 'normal' == STATES[LEFTTRACK] == STATES[RIGHTTRACK]:
                return 'normal'
            if 'destroyed' in [STATES[LEFTTRACK], STATES[RIGHTTRACK]]:
                return 'destroyed'
            elif 'critical' in [STATES[LEFTTRACK], STATES[RIGHTTRACK]]:
                return 'critical'
    else:
        return STATES[device]

def useUnit(repairMode, item):
    global consumablesPanel, crewContusion
    consumablesPanel._ConsumablesPanel__handleEquipmentPressed(repairMode, item)
    if crewContusion is not None:
        if item in crewContusion:
            crewContusion.remove(item)
    # log('{}, {}'.format(repairMode, item))

def itemRepairHandler(data):
    item = data['name']
    consumablesCds = consumablesPanel._ConsumablesPanel__cds
    if item in DEVICES:
        if item == FUELTANK:
            if REPAIRS['extinguisher'] in consumablesCds:
                useUnit(REPAIRS['extinguisher'], None)
        else:
            if item == TRACKS:
                if lastDestroyedTrack is not None:
                    item = lastDestroyedTrack
                else:
                    if STATES[LEFTTRACK] in ['critical', 'destroyed']:
                        item = LEFTTRACK
                    elif STATES[RIGHTTRACK] in ['critical', 'destroyed']:
                        item = RIGHTTRACK
            if REPAIRS['repair_kit'] in consumablesCds:
                useUnit(REPAIRS['repair_kit'], item)
            elif REPAIRS['g_repair_kit'] in consumablesCds:
                useUnit(REPAIRS['g_repair_kit'], item)
    else:
        if REPAIRS['med_kit'] in consumablesCds:
            useUnit(REPAIRS['med_kit'], _getContusedTankmanWIndex(item))
        elif REPAIRS['g_med_kit'] in consumablesCds:
            useUnit(REPAIRS['g_med_kit'], _getContusedTankmanWIndex(item))

as_callback(ENGINE, itemRepairHandler)
as_callback(AMMOBAY, itemRepairHandler)
as_callback(GUN, itemRepairHandler)
as_callback(TURRET, itemRepairHandler)
as_callback(TRACKS, itemRepairHandler)
as_callback(SURVEYING, itemRepairHandler)
as_callback(RADIO, itemRepairHandler)
as_callback(FUELTANK, itemRepairHandler)
as_callback(COMMANDER, itemRepairHandler)
as_callback(RADIOMAN, itemRepairHandler)
as_callback(DRIVER, itemRepairHandler)
as_callback(GUNNER, itemRepairHandler)
as_callback(LOADER, itemRepairHandler)

#REGISTERS

@registerEvent(PlayerAvatar, 'vehicle_onEnterWorld')
def vehicle_onEnterWorld(self, vehicle):
    global crewRoles
    if vehicle.id == self.playerVehicleID:
        crewRoles = []
        #log('{}'.format(vehicle.typeDescriptor.type.crewRoles))
        for role in vehicle.typeDescriptor.type.crewRoles:
            for tankman in role:
                crewRoles.append(tankman)
        #as_event(EVENTS['onCrewCounted'])

@registerEvent(DamagePanel, '_updateDeviceState')
def _updateDeviceState(self, value):
    global STATES, lastDestroyedTrack, crewContusion
    item = value[0]
    state = value[2]
    if item in [LEFTTRACK, RIGHTTRACK]:
        if state == 'destroyed':
            lastDestroyedTrack = item
        elif item == lastDestroyedTrack:
            lastDestroyedTrack = None
    else:
        crewContusion = []
        if state == 'destroyed':
            crewContusion.append(item)
        item = _getTankmanWOIndex(item)
    STATES[item] = state.replace('repaired', 'normal')
    as_event(EVENTS[item])

@registerEvent(DamagePanel, '_updateCrewDeactivated')
def _updateCrewDeactivated(self, _):
    _resetAll()

@registerEvent(DamagePanel, '_updateDestroyed')
def _updateDestroyed(self, _ = None):
    _resetAll()

@registerEvent(ConsumablesPanel, '_ConsumablesPanel__onEquipmentAdded')
def __onEquipmentAdded(self, intCD, entityName = None):
    global consumablesPanel
    consumablesPanel = self

@registerEvent(ConsumablesPanel, '_ConsumablesPanel__onEquipmentUpdated')
def __onEquipmentUpdated(self, intCD, entityName = None):
    global consumablesPanel
    consumablesPanel = self

@registerEvent(TargetDistancePlugin, '_onCrosshairViewChanged')
def _onCrosshairViewChanged(self, viewID):
    global crosshairViewID
    crosshairViewID = viewID
    as_event(EVENTS['onViewChanged'])

@registerEvent(PlayerAvatar, '_PlayerAvatar__destroyGUI')
def _PlayerAvatar__destroyGUI(self):
    _resetAll()

#EXPORTS

@xvm.export('getYByOffset', deterministic=False)
def getYByOffset(defVal, yOffset):
    return (defVal - yOffset) if (crosshairViewID in [CROSSHAIR_VIEW_ID.SNIPER, CROSSHAIR_VIEW_ID.STRATEGIC]) else defVal

@xvm.export('engineState', deterministic=False)
def engineState():
    return getDeviceState(ENGINE)

@xvm.export('ammoBayState', deterministic=False)
def ammoBayState():
    return getDeviceState(AMMOBAY)

@xvm.export('gunState', deterministic=False)
def gunState():
    return getDeviceState(GUN)

@xvm.export('turretState', deterministic=False)
def turretState():
    return getDeviceState(TURRET)

@xvm.export('tracksState', deterministic=False)
def tracksState():
    return getDeviceState(TRACKS)

@xvm.export('surveyingState', deterministic=False)
def surveyingState():
    return getDeviceState(SURVEYING)

@xvm.export('radioState', deterministic=False)
def radioState():
    return getDeviceState(RADIO)

@xvm.export('fuelTankState', deterministic=False)
def fuelTankState():
    return getDeviceState(FUELTANK)

@xvm.export('commanderState', deterministic=False)
def commanderState():
    return getCrewState(COMMANDER)

@xvm.export('radiomanState', deterministic=False)
def radiomanState():
    return getCrewState(RADIOMAN)

@xvm.export('driverState', deterministic=False)
def driverState():
    return getCrewState(DRIVER)

@xvm.export('gunnerState', deterministic=False)
def gunnerState():
    return getCrewState(GUNNER)

@xvm.export('loaderState', deterministic=False)
def loaderState():
    return getCrewState(LOADER)

#@xvm.export('isInCrew', deterministic=False)
#def isInCrew(tankman):
#    if crewRoles is not None:
#        #log('{}, {}, {}'.format(crewRoles, tankman, tankman in crewRoles))
#        return True if tankman in crewRoles else False
#    else:
#        return False
