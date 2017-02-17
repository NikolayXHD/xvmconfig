from xvm_main.python.vehinfo_tiers import _special, _getTiers
from items import vehicles

@xvm.export('battletiers.specialColor')
def specialColor(*args):

    name, color1, color2 = args
    name = name.replace('-', ':', 1)

    if name not in _special:
        return color2

    vDesc = vehicles.VehicleDescr(typeName = name)
    cls = __getTankClass(vDesc.type.tags)

    tMin, tMax = _getTiers(vDesc.level, cls, '')
    tMin2, tMax2 = _special[name]

    return color1 if tMax2 < tMax else color2

def __getTankClass(tags):
    if 'lightTank' in tags: return 'lightTank'
    if 'heavyTank' in tags: return 'heavyTank'
    return ''