/**
 * Over-target markers. All settings moved to separate files.
 * Маркеры над танками. Все настройки вынесены в отдельные файлы.
 */
{
  "markers": {
    // false - use standard client vehicle markers.
    // false - использовать стандартные маркеры клиента.
    "enabled": true,
    // {{turret}} marker display strings.
    // Отображаемые строки {{turret}} маркера.    
	"turretMarkers": ${"turretMarkers.xc":"turretMarkers"},
    // ally
    // союзники
    "ally": {
      "alive": {
        "normal": ${"markersAliveNormal.xc":"ally"},
        "extended": ${"markersAliveExtended.xc":"ally"}
      },
      "dead": {
        "normal": ${"markersDeadNormal.xc":"ally"},
        "extended": ${"markersDeadExtended.xc":"ally"}
      }
    },
    // enemy
    // противники
    "enemy": {
      "alive": {
        "normal": ${"markersAliveNormal.xc":"enemy"},
        "extended": ${"markersAliveExtended.xc":"enemy"}
      },
      "dead": {
        "normal": ${"markersDeadNormal.xc":"enemy"},
        "extended": ${"markersDeadExtended.xc":"enemy"}
      }
    }
  }
}