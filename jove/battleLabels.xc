/**
 * List of battle interface labels.
 * Список текстовых полей боевого интерфейса.
 */
{
  "labels": {
    // Referenced labels:
    // * every custom field can be separate enabled or disabled by "enabled" switch in their settings.
    // * extended format supported, see extra-field.txt
    // Подключенные текстовые поля:
    // * кастомные поля можно отдельно отключать и включать с помощью "enabled" в их настройках.
    // * поддерживается расширенный формат, см. extra-field.txt
    "formats": [
      ${ "battleLabelsTemplates.xc":"def.hitlogHeader" }
      //${ "battleLabelsTemplates.xc":"def.hitlogBody" },
      //${ "battleLabelsTemplates.xc":"def.totalHP" },
      //${ "battleLabelsTemplates.xc":"def.avgDamage" },
      //${ "battleLabelsTemplates.xc":"def.mainGun" },
      //${ "battleLabelsTemplates.xc":"def.damageLogBackground"},
      //${ "battleLabelsTemplates.xc":"def.damageLog" },
      //${ "battleLabelsTemplates.xc":"def.lastHit" },
      //${ "battleLabelsTemplates.xc":"def.fire" },
      //${ "battleLabelsTemplates.xc":"def.totalEfficiency" },
      //timerstart
      ,${ "battleLabelsTemplates.xc":"def.repairTimeEngine" },
      ${ "battleLabelsTemplates.xc":"def.repairTimeGun" },
      ${ "battleLabelsTemplates.xc":"def.repairTimeTurret" },
      ${ "battleLabelsTemplates.xc":"def.repairTimeTracks" }, 
      ${ "battleLabelsTemplates.xc":"def.repairTimeSurveying" },
      ${ "battleLabelsTemplates.xc":"def.repairTimeRadio" }
      //timerend
      //repairstart
      ,${ "battleLabelsRepairControl.xc":"repairCtrlEngine" },
      ${ "battleLabelsRepairControl.xc":"repairCtrlAmmoBay" },
      ${ "battleLabelsRepairControl.xc":"repairCtrlGun" },
      ${ "battleLabelsRepairControl.xc":"repairCtrlTurret" },
      ${ "battleLabelsRepairControl.xc":"repairCtrlTracks" },
      ${ "battleLabelsRepairControl.xc":"repairCtrlSurveying" },
      ${ "battleLabelsRepairControl.xc":"repairCtrlRadio" },
      ${ "battleLabelsRepairControl.xc":"repairCtrlFuelTank" },

      ${ "battleLabelsRepairControl.xc":"healCtrlCommander" },
      ${ "battleLabelsRepairControl.xc":"healCtrlRadioman" },
      ${ "battleLabelsRepairControl.xc":"healCtrlDriver" },
      ${ "battleLabelsRepairControl.xc":"healCtrlGunner" },
      ${ "battleLabelsRepairControl.xc":"healCtrlLoader" }
      //repairend
    ]
  }
}
