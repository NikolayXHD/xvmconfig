/**
 * Parameters for hangar
 * Параметры ангара
 */
{
  "hangar": {
    // Show "Buy premium" button
    // Показать кнопку "Купить премиум"
    "showBuyPremiumButton": true,
    // Show "Premium shop" button
    // Показать кнопку "Премиум магазин"
    "showPremiumShopButton": true,
    // Show "General chat" button
    // Показать кнопку "Общий чат"
    "showGeneralChatButton": true,
    // true - enable locker for gold
    // true - включить замок для золота
    "enableGoldLocker": false,
    // true - enable locker for free XP
    // true - включить замок для свободного опыта
    "enableFreeXpLocker": false,
    // Show/hide server info or change its parameters
    // Показать/спрятать информацию о сервере, или изменить ее параметры
    "serverInfo": {
      // Show server info in hangar.
      // Показывать информацию о сервере в ангаре.
      "enabled": true,
      // Transparency in percents [0..100].
      // Прозрачность в процентах [0..100].
      "alpha": 100,
      // Rotation in degrees [0..360].
      // Угол поворота в градусах [0..360].
      "rotation": 0,
      // X offset
      // Cмещение по оси X
      "offsetX": 0,
      // Y offset
      // Cмещение по оси Y
      "offsetY": 0
    },
    // true - Enable crew auto return function
    // true - Включить функцию автовозврата экипажа
	"enableCrewAutoReturn": ${"hangar/CrewAutoReturn.xc":"enableCrewAutoReturn"},
    // true - Return crew check box is selected by default
    // true - Включить галочку возврата экипажа по умолчанию
	"crewReturnByDefault": ${"hangar/CrewAutoReturn.xc":"crewReturnByDefault"},
    // Number of perks to show without grouping
    // Количество перков, которые отображаются без группировки
    "crewMaxPerksCount": 4,
    // Show/hide common quests button or change its parameters
    // Показать/спрятать кнопку общих задач, или изменить ее параметры
    "commonQuests": {
      // Show common quests button in hangar.
      // Показывать кнопку общих задач в ангаре.
      "enabled": true,
      // Transparency in percents [0..100].
      // Прозрачность в процентах [0..100].
      "alpha": 100,
      // Rotation in degrees [0..360].
      // Угол поворота в градусах [0..360].
      "rotation": 0,
      // X offset
      // Cмещение по оси X
      "offsetX": 0,
      // Y offset
      // Cмещение по оси Y
      "offsetY": 0
    },
    // Show/hide personal quests button or change its parameters
    // Показать/спрятать кнопку персональных задач, или изменить ее параметры
    "personalQuests": {
      // Show personal quests button in hangar.
      // Показывать кнопку персональных задач в ангаре.
      "enabled": true,
      // Transparency in percents [0..100].
      // Прозрачность в процентах [0..100].
      "alpha": 100,
      // Rotation in degrees [0..360].
      // Угол поворота в градусах [0..360].
      "rotation": 0,
      // X offset
      // Cмещение по оси X
      "offsetX": 0,
      // Y offset
      // Cмещение по оси Y
      "offsetY": 0
    },
    // Show/hide current vehicle name, type and level or change their parameters
    // Показать/спрятать название, тип и уровень текущего танка, или изменить их параметры
    "vehicleName": {
      // Show current vehicle name, type and level in hangar.
      // Показывать название, тип и уровень текущего танка в ангаре.
      "enabled": true,
      // Transparency in percents [0..100].
      // Прозрачность в процентах [0..100].
      "alpha": 100,
      // Rotation in degrees [0..360].
      // Угол поворота в градусах [0..360].
      "rotation": 0,
      // X offset
      // Cмещение по оси X
      "offsetX": 0,
      // Y offset
      // Cмещение по оси Y
      "offsetY": 0
    },
    // true - Enable removable equipment auto return (Camouflage net, Stereoscope, Toolbox)
    // true - Включить автовозврат съемного оборудования (Маскировочная сеть, Стереотруба, Ящик с инструментами)
	"enableEquipAutoReturn": ${"hangar/EquipAutoReturn.xc":"enableEquipAutoReturn"},
    // true - Make vehicle not ready for battle if low ammo
    // true - Сделать машину не готовой к битве если мало снарядов
    "blockVehicleIfLowAmmo": true,
    // Below this percentage, ammo is low. (0 - 100)
    // Ниже этого процента, снарядов считается мало. (0 - 100)
    "lowAmmoPercentage": 20,
    // Behavior of the system channel notifications button on new notifications:
    //   none - do nothing
    //   blink - blink button
    //   full - blink and show counter (default client behavior)
    // Поведение кнопки оповещений системного канала при новых оповещениях:
    //   none - ничего не делать
    //   blink - мигать кнопкой
    //   full - мигать и показать счетчик (поведение клиента по-умолчанию)
    "notificationsButtonType": "full",
    // true - Hide price button in tech tree
    // true - Прятать кнопку с ценой в дереве исследований
    "hidePricesInTechTree": false,
    // true - Show mastery mark in tech tree
    // true - Показывать знак мастерства в дереве исследований
    "masteryMarkInTechTree": true,
    // true - Allow to consider the exchange of experience with gold in tech tree
    // true - Разрешить учитывать обмен опыта за золото в дереве исследований
    "allowExchangeXPInTechTree": true,
    // true - Show flags in barracks
    // true - Показывать флаги в казарме
    "barracksShowFlags": true,
    // true - Show skills in barracks
    // true - Показывать умения в казарме
    "barracksShowSkills": true,
    // Ping servers
    // Пинг серверов
	"pingServers": ${"hangar/pingServers.xc":"pingServers"},
      // true - Enable display of ping to the servers
      // true - показывать пинг до серверов
	"onlineServers": ${"hangar/onlineServers.xc":"onlineServers"},
    // Parameters for tank carousel
    // Параметры карусели танков
    "carousel": ${"carousel.xc":"carousel"},
    // Parameters for widgets
    // Параметры виджетов
    "widgets": ${"widgets.xc":"widgets.lobby"}
  }
}
