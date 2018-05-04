/**
 * Parameters for login screen
 * Параметры экрана логина
 */
{
  "login": {
    // Save last server
    // Сохранять последний сервер
    "saveLastServer": false,
    // Auto enter to the game
    // Автоматический вход в игру
    "autologin": false,
    // Auto confirm old replays playing
    // Автоматически подтверждать проигрывание старых реплеев
    "confirmOldReplays": false,
    // Ping servers
    // Пинг серверов
	"pingServers": ${"login/pingServers.xc":"pingServers"},
    // true - Enable display of ping to the servers
    // true - показывать пинг до серверов
	"onlineServers": ${"login/onlineServers.xc":"onlineServers"},
    // Parameters for widgets
    // Параметры виджетов
    "widgets": ${"widgets.xc":"widgets.login"}
  }
}