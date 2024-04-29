---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")

local advancedOptionsLocales = {
    ["Advanced"] = {
        ["ptBR"] = "Avançado",
        ["ruRU"] = "Дополнительно",
        ["deDE"] = "Erweitert",
        ["koKR"] = "고급",
        ["esMX"] = "Avanzado",
        ["enUS"] = true,
        ["zhCN"] = "进阶",
        ["zhTW"] = "進階",
        ["esES"] = "Avanzado",
        ["frFR"] = "Avancé",
    },
    ["Advanced Settings"] = {
        ["ptBR"] = "Configurações avançadas",
        ["ruRU"] = "Расширенные настройки",
        ["deDE"] = "Erweiterte Einstellungen",
        ["koKR"] = "고급 설정",
        ["esMX"] = "Configuración avanzada",
        ["enUS"] = true,
        ["zhCN"] = "进阶选项",
        ["zhTW"] = "進階設定",
        ["esES"] = "Configuración avanzada",
        ["frFR"] = "Configuration avancée",
    },
    ["Enable Icon Limit"] = {
        ["ptBR"] = "Ativar limite de ícone",
        ["ruRU"] = "Лимит значков",
        ["deDE"] = "Icons limitieren",
        ["koKR"] = "아이콘 개수 제한 활성화",
        ["esMX"] = "Habilitar límite de icono",
        ["enUS"] = true,
        ["zhCN"] = "启用图标限制",
        ["zhTW"] = "啟用圖示限制",
        ["esES"] = "Habilitar límite de icono",
        ["frFR"] = "Limiter le nombre d'icônes",
    },
    ["Icon Limit"] = {
        ["ptBR"] = "Limite de ícone",
        ["ruRU"] = "Лимит количества значков",
        ["deDE"] = "Icon Limit",
        ["koKR"] = "아이콘 개수 제한",
        ["esMX"] = "Límite de icono",
        ["enUS"] = true,
        ["zhCN"] = "图标限制",
        ["zhTW"] = "圖示數量限制",
        ["esES"] = "Límite de icono",
        ["frFR"] = "Limite d'icônes",
    },
    ["Enable the limit of icons drawn per type."] = {
        ["ptBR"] = "Ativa o limite de ícones desenhados por tipo.",
        ["ruRU"] = "Включает ограничение количества значков, отображаемых для каждого типа",
        ["deDE"] = "Aktiviert/Deaktiviert, ob die Menge an Icons pro Typ limitiert wird.",
        ["koKR"] = "아이콘의 종류 별로 표시할 개수를 제한합니다.",
        ["esMX"] = "Habilita el límite de iconos por tipo.",
        ["enUS"] = true,
        ["zhCN"] = "启用对每种类型图标的限制",
        ["zhTW"] = "啟用每種類型繪製圖示的限制。",
        ["esES"] = "Habilita el límite de iconos por tipo.",
        ["frFR"] = "Active la limite au nombre d'icônes affichées d'un même type.",
    },
    ["Limits the amount of icons drawn per type. ( Default: %s )"] = {
        ["ptBR"] = "Limita a quantidade de ícones desenhados por tipo. ( Por defeito: %s )",
        ["ruRU"] = "Регулировка ограничения количества значков, отображаемых для каждого типа (по умолчанию: %s)",
        ["deDE"] = "Wie viele Icons pro Type gezeigt werden sollen. ( Standard: %s )",
        ["koKR"] = "아이콘의 종류 별로 표시를 제한할 개수를 설정합니다. ( 기본값: %s )",
        ["esMX"] = "Limita la cantidad de iconos por tipo. ( Predeterminado: %s)",
        ["enUS"] = true,
        ["zhCN"] = "限制每种类型图标数量 ( 默认: %s )",
        ["zhTW"] = "限制每種類型繪製的圖示數量。(預設值: %s )",
        ["esES"] = "Limita la cantidad de iconos por tipo. ( Predeterminado: %s)",
        ["frFR"] = "Limite le nombre d'icônes affichées d'un même type. (Par défaut : %s)",
    },
    ["Enable bug workarounds"] = {
        ["ptBR"] = "Ativar soluções alternativas para bugs",
        ["ruRU"] = "Обходные решения",
        ["deDE"] = "Bug-Workarounds aktivieren",
        ["koKR"] = false,
        ["esMX"] = "Activar soluciones de errores",
        ["enUS"] = true,
        ["zhCN"] = "启用错误修正功能",
        ["zhTW"] = "啟用錯誤修正功能",
        ["esES"] = "Activar soluciones de errores",
        ["frFR"] = "Activer les contournements de bugs",
    },
    ["When enabled, Questie will hotfix vanilla UI bugs."] = {
        ["ptBR"] = "Quando ativado, o Questie corrigirá bugs da interface do usuário do Vanilla.",
        ["ruRU"] = "Когда включено, Questie будет исправлять ошибки классического интерфейса",
        ["deDE"] = "Aktiviert/Deaktiviert, dass Questie Fehler im Vanilla UI behebt.",
        ["koKR"] = false,
        ["esMX"] = "Si está habilitado, Questie corregirá los errores de la interfaz de usuario.",
        ["enUS"] = true,
        ["zhCN"] = "启用时，任务提示插件会热修经典的界面错误。",
        ["zhTW"] = "啟用時，任務位置提示插件會熱修經典的介面錯誤。",
        ["esES"] = "Si está habilitado, Questie corregirá los errores de la interfaz de usuario.",
        ["frFR"] = "Si activé, Questie corrigera les bugs de l'interface utilisateur Vanilla.",
    },
    ["Developer Options"] = {
        ["ptBR"] = "Opções do desenvolvedor",
        ["ruRU"] = "Настройки разработчика",
        ["deDE"] = "Entwickler-Einstellungen",
        ["koKR"] = "개발자 설정",
        ["esMX"] = "Opciones de desarrollador",
        ["enUS"] = true,
        ["zhCN"] = "开发选项",
        ["zhTW"] = "開發者選項",
        ["esES"] = "Opciones de desarrollador",
        ["frFR"] = "Options de développement",
    },
    ["Show Quest IDs"] = {
        ["ptBR"] = "Mostrar IDs da missão",
        ["ruRU"] = "Показать ID заданий",
        ["deDE"] = "Zeige Quest-IDs",
        ["koKR"] = "퀘스트 ID 표시",
        ["esMX"] = "Mostrar ID de misión",
        ["enUS"] = true,
        ["zhCN"] = "显示任务ID",
        ["zhTW"] = "顯示任務 ID",
        ["esES"] = "Mostrar ID de misión",
        ["frFR"] = "Afficher l'ID des quêtes",
    },
    ["When this is checked, the ID of quests will show in tooltips and the tracker."] = {
        ["ptBR"] = "Quando isso estiver marcado, o ID das missões será exibido nas dicas de ferramentas e no rastreador.",
        ["ruRU"] = "Когда включено, ID заданий будут отображаться во всплывающих подсказках и в трекере",
        ["deDE"] = "Aktiviert/Deaktiviert, dass die Quest-ID in den Tooltips und dem Tracker angezeigt werden.",
        ["koKR"] = "퀘스트의 ID를 툴팁과 추적기에 표시합니다.",
        ["esMX"] = "Si está marcado, la ID de misiones mostrará en los tooltips y el rastreador.",
        ["enUS"] = true,
        ["zhCN"] = "勾选此选项后，任务ID将显示在鼠标提示和跟踪器中",
        ["zhTW"] = "啟用時，會在浮動提示資訊和任務追蹤清單內顯示任務 ID。",
        ["esES"] = "Si está marcado, la ID de misiones mostrará en los tooltips y el rastreador.",
        ["frFR"] = "Active l'affichage de l'ID des quêtes dans les infobulles et le suivi des quêtes.",
    },
    ["Enable Debug"] = {
        ["ptBR"] = "Ativar depuração",
        ["ruRU"] = "Режим отладки",
        ["deDE"] = "Debugging aktivieren",
        ["koKR"] = "디버그 활성화",
        ["esMX"] = "Habilitar depurar",
        ["enUS"] = true,
        ["zhCN"] = "启用除错",
        ["zhTW"] = "啟用除錯",
        ["esES"] = "Habilitar depurar",
        ["frFR"] = "Mode debug",
    },
    ["Enable or disable debug functionality."] = {
        ["ptBR"] = "Ativar ou desativar o recurso de depuração.",
        ["ruRU"] = "Включить/отключить режим отладки",
        ["deDE"] = "Aktiviert/Deaktiviert die Debugging Funktion.",
        ["koKR"] = "디버그 기능을 사용합니다.",
        ["esMX"] = "Habilita o deshabilita el modo depura.",
        ["enUS"] = true,
        ["zhCN"] = "启用或停用除错功能",
        ["zhTW"] = "啟用或停用除錯的功能。",
        ["esES"] = "Habilita o deshabilita el modo depura.",
        ["frFR"] = "Active le mode debug.",
    },
    ["Debug level to print"] = {
        ["ptBR"] = "Nível de depuração para impressão",
        ["ruRU"] = "Уровень отладки для вывода в чат",
        ["deDE"] = "Debug-Level",
        ["koKR"] = "디버그 레벨 출력",
        ["esMX"] = "Nivel de depura a mostrar",
        ["enUS"] = true,
        ["zhCN"] = "除错等级",
        ["zhTW"] = "除錯訊息等級",
        ["esES"] = "Nivel de depura a mostrar",
        ["frFR"] = "Niveau de debug",
    },
    ["Hitting this button will reset all of the Questie configuration settings back to their default values. (Excluding Localization)"] = {
        ["ptBR"] = "Se clicar nesse botão redefinirá todas as configurações do Questie para seus valores. (Não localização / tradução)",
        ["ruRU"] = "Нажатие этой кнопки приведет к сбросу всех настроек аддона (за исключением языка)",
        ["deDE"] = "Setzt alle Einstellungen von Questie auf den Standardwert zurück (Lokalisierung ausgeschlossen).",
        ["koKR"] = "이 버튼을 누르면 모든 Questie 설정이 기본값으로 초기화됩니다. (언어 설정 제외)",
        ["esMX"] = "Al hacer clic este botón restablecerá toda la configuración de Questie a los valores predeterminados. (Menos el idioma)",
        ["enUS"] = true,
        ["zhCN"] = "点击这个按钮将会使Questie除了本地化以外的所有设置重置为默认值。",
        ["zhTW"] = "按下這個按鈕會將任務位置提示插件的所有設定重置成預設值。(語言設定除外)",
        ["esES"] = "Al hacer clic este botón restablecerá toda la configuración de Questie a los valores predeterminados. (Menos el idioma)",
        ["frFR"] = "Activer ce bouton réinitialisera tous les paramètres de Questie à leurs valeurs par défaut. (sauf choix de la langue)",
    },
    ["Reset Questie"] = {
        ["ptBR"] = "Redefinir Questie",
        ["ruRU"] = "Сбросить настройки",
        ["deDE"] = "Questie zurücksetzen",
        ["koKR"] = "Quetie 초기화",
        ["esMX"] = "Restablecer Questie",
        ["enUS"] = true,
        ["zhCN"] = "重置",
        ["zhTW"] = "重置任務位置提示",
        ["esES"] = "Restablecer Questie",
        ["frFR"] = "Réinitialiser Questie",
    },
    ["Reset Questie to the default values for all settings."] = {
        ["ptBR"] = "Redefina a Questie para valores para todas as configurações.",
        ["ruRU"] = "Сбросить настройки аддона к значениям по умолчанию",
        ["deDE"] = "Setzt alle Einstellungen von Questie auf den Standardwert zurück.",
        ["koKR"] = "모든 Questie 설정을 기본값으로 초기화합니다.",
        ["esMX"] = "Restablece Questie a todos los valores predeterminados.",
        ["enUS"] = true,
        ["zhCN"] = "将所有设置重置为默认值。",
        ["zhTW"] = "重置任務位置提示插件，所有設定都恢復成預設值。",
        ["esES"] = "Restablece Questie a todos los valores predeterminados.",
        ["frFR"] = "Réinitialiser Questie aux valeurs par défaut pour tous les paramètres.",
    },
    ["Recompile Database"] = {
        ["ptBR"] = "Recompilar banco de dados",
        ["ruRU"] = "Перекомпиляция БД",
        ["deDE"] = "Datenbank neukompilieren",
        ["koKR"] = "데이터베이스 재설정",
        ["esMX"] = "Recompilar base de datos",
        ["enUS"] = true,
        ["zhCN"] = "启用资料库",
        ["zhTW"] = "重建資料庫",
        ["esES"] = "Recompilar base de datos",
        ["frFR"] = "Recompiler la base de données",
    },
    ["Forces a recompile of the Questie database. This will also reload the UI."] = {
        ["ptBR"] = "Força uma recompilação do banco de dados do Questie. Isso também recarregará a interface do usuário.",
        ["ruRU"] = "Принудительная перекомпиляция базы данных Questie. При этом перезагрузится пользовательский интерфейс",
        ["deDE"] = "Lässt die Questie Datenbank neu kompilieren und läd das UI neu.",
        ["koKR"] = "퀘스트 데이터베이스를 강제로 재설정합니다. UI는 Reload됩니다.",
        ["esMX"] = "Fuerza una recompilación de la base de datos Questie. Esto también volverá a cargar la interfaz de usuario.",
        ["enUS"] = true,
        ["zhCN"] = "强制重建任务资料库。这会重新加载插件",
        ["zhTW"] = "強制重建任務位置提示插件的資料庫，同時也會重新載入介面。",
        ["esES"] = "Fuerza una recompilación de la base de datos Questie. Esto también volverá a cargar la interfaz de usuario.",
        ["frFR"] = "Force une recompilation de la base de données Questie. Cela recharge aussi votre interface graphique.",
    },
    ["Open Profiler"] = {
        ["ptBR"] = "Abrir perfilador",
        ["ruRU"] = "Открыть профайлер",
        ["deDE"] = "Profiler öffnen",
        ["koKR"] = "프로파일러를 엽니다.",
        ["esMX"] = "Abrir perfilador",
        ["enUS"] = true,
        ["zhCN"] = "打开分析器",
        ["zhTW"] = "打開效能分析",
        ["esES"] = "Abrir perfilador",
        ["frFR"] = "Ouvrir le profileur",
    },
    ["Open the Questie profiler, this is useful for tracking down the source of lag / frame spikes."] = {
        ["ptBR"] = "Abre o perfilador Questie, isso é útil para rastrear a fonte de picos da latência.",
        ["ruRU"] = "Открывает профайлер Questie. Полезен для отслеживания источников лагов или падения FPS",
        ["deDE"] = "Der Profiler ermöglich das Ermitteln von Ursachen für Lags und FPS Verlusten.",
        ["koKR"] = "Questie 프로파일러를 엽니다. 이 프로파일러는 지연/프레임 스파이크의 소스를 추적하는 데 유용합니다.",
        ["esMX"] = "Abre el perfilador de Questie, esto es útil para rastrear la fuente de picos de latencia.",
        ["enUS"] = true,
        ["zhCN"] = "打开 Questie 分析器, 这对于追踪延迟/帧数峰值的来源很有用",
        ["zhTW"] = "打開任務位置提示插件的效能分析，對於追蹤延遲/掉幀的原因很有幫助。",
        ["esES"] = "Abre el perfilador de Questie, esto es útil para rastrear la fuente de picos de latencia.",
        ["frFR"] = "Ouvrez le profileur Questie, cela est utile pour rechercher la source des pics de latence/image.",
    },
    ["Localization Settings"] = {
        ["ptBR"] = "Configurações de localização",
        ["ruRU"] = "Язык аддона",
        ["deDE"] = "Spracheinstellungen",
        ["koKR"] = "언어 설정",
        ["esMX"] = "Opciones de idioma",
        ["enUS"] = true,
        ["zhCN"] = "语言设置",
        ["zhTW"] = "語言設定",
        ["esES"] = "Opciones de idioma",
        ["frFR"] = "Paramètre de localisation",
    },
    ["Select UI Locale"] = {
        ["ptBR"] = "Selecione a interface do utilizador",
        ["ruRU"] = "Выберите язык",
        ["deDE"] = "Interface-Sprache wählen",
        ["koKR"] = "UI 언어 설정",
        ["esMX"] = "Seleccionar idioma de interfaz",
        ["enUS"] = true,
        ["zhCN"] = "选择界面语言",
        ["zhTW"] = "選擇介面語言",
        ["esES"] = "Seleccionar idioma de interfaz",
        ["frFR"] = "Sélection de la langue :",
    },
    ["Automatic"] = {
        ["ptBR"] = "Automático",
        ["ruRU"] = "Автовыбор",
        ["deDE"] = "Automatisch",
        ["koKR"] = "자동",
        ["esMX"] = "Automático",
        ["enUS"] = true,
        ["zhCN"] = "自动选择",
        ["zhTW"] = "自動",
        ["esES"] = "Automático",
        ["frFR"] = "Automatique",
    },
    ["The database needs to be updated to change language. Press reload to apply the new language"] = {
        ["ptBR"] = "O banco de dados precisa ser atualizado para alterar o idioma. Pressione recarregar para aplicar o novo idioma",
        ["ruRU"] = "БД должна обновиться для изменения языка. Нажмите 'Перезагрузка' для использования нового языка",
        ["deDE"] = "Die Datenbank muss durch den Sprachenwechsel neugeladen werden. Drücke reload um die neue Sprache zu aktivieren.",
        ["koKR"] = "언어 설정을 위해 데이터베이스 업데이트가 필요합니다. 새로 적용된 언어를 위해 Reload를 누르세요.",
        ["esMX"] = "Es necesario actualizar la base de datos para cambiar el idioma. Presiona recargar para aplicar el nuevo idioma",
        ["enUS"] = true,
        ["zhCN"] = "需要更新数据库及更改语言。 需重新加载以应用新语言",
        ["zhTW"] = "更改語言需要更新資料庫，請按下重新載入來套用新的語言。",
        ["esES"] = "Es necesario actualizar la base de datos para cambiar el idioma. Presiona recargar para aplicar el nuevo idioma",
        ["frFR"] = "La base de données doit être mise à jour pour changer la langue. Appuyez sur Recharger pour appliquer la nouvelle langue.",
    },
    ["Questie is under active development for World of Warcraft: Classic. Please check GitHub for the latest alpha builds or to report issues. Or join us on our discord! (( https://github.com/Questie/Questie/ ))"] = {
        ["ptBR"] = "Questie está em desenvolvimento para World of Warcraft: Classic. Verifique o GitHub para obter as versões mais recentes ou relatar problemas. Ou junte-se a nós em nossa discórdia!(( https://github.com/Questie/Questie/ )) ",
        ["ruRU"] = "Questie находится в стадии активной разработки для World of Warcraft: Classic. Проверяйте наличие обновлений на сайте GitHub (https://github.com/Questie/Questie/) или присоединяйтесь к нашему серверу в Discord (https://discord.gg/phKnHVu)",
        ["deDE"] = "Questie befindet sich noch aktiv in der Entwicklungsphase für World of Warcraft: Classic. Für Neuigkeiten und aktuelle Versionen schau auf Github vorbei oder trete unserem Discord Server bei! (( https://github.com/Questie/Questie/ ))",
        ["koKR"] = "Questie는 월드 오브 워크래프트:클래식을 위해 활발히 개발 중입니다. 최신 알파 빌드 또는 보고된 문제들을 확인하시려면 GitHub을 확인해주세요. 또는 저희 디스코드에 참여하세요! (( https://github.com/Questie/Questie/ ))",
        ["esMX"] = "Questie está bajo desarrollo activo para World of Warcraft: Classic. Por favor ve a Github para las versiones alfa o para reportar problemas. O únete a nuestro Discord! (( https://github.com/Questie/Questie/ ))",
        ["enUS"] = true,
        ["zhCN"] = "Questie是一款为魔兽世界经典旧世制作的任务插件，目前仍在开发中，请到Github查看最新版本、提交问题或提供建议，或是加入我们的 discord 频道。(( https://github.com/Questie/Questie/ ))",
        ["zhTW"] = "任務位置提示插件 Questie 正在為了魔獸世界：經典版積極開發中。請到 GitHub 取得最新的 alpha 版本和回報問題，或是在 Discord 上加入我們! (( https://github.com/Questie/Questie/ ))",
        ["esES"] = "Questie está bajo desarrollo activo para World of Warcraft: Classic. Por favor ve a Github para las versiones alfa o para reportar problemas. O únete a nuestro Discord! (( https://github.com/Questie/Questie/ ))",
        ["frFR"] = "Questie est en cours de développement pour World of Warcraft: Classic. Veuillez consulter GitHub pour connaître les dernières versions alpha ou signaler des problèmes. Ou rejoignez nous sur notre discord ! ( https://github.com/Questie/Questie/ ) ",
    },
    ["Skip Validation"] = {
        ["ptBR"] = "Ignorar validação",
        ["ruRU"] = "Пропуск валидации",
        ["deDE"] = "Validierung überspringen",
        ["koKR"] = false,
        ["esMX"] = "Omitir validación",
        ["enUS"] = true,
        ["zhCN"] = false,
        ["zhTW"] = "跳過檢查",
        ["esES"] = "Omitir validación",
        ["frFR"] = "Passer la validation",
    },
    ["Skip database validation upon recompile. Validation is only present with debug enabled in the first place."] = {
        ["ptBR"] = "Ignora validação do banco de dados ao recompilar. A validação está presente apenas quando o modo de depuração está habilitado desde o início.",
        ["ruRU"] = "Пропустить валидацию БД после перекомпиляции. Валидация имеется только при включенном режиме отладки",
        ["deDE"] = "Die Datenbank-Validierung beim Neukompilieren überspringen. Die Validierung findet nur bei aktivem Debugging statt.",
        ["koKR"] = false,
        ["esMX"] = "Omite la validación de la base de datos al volver a compilar. La validación solo está presente con la depuración activada.",
        ["enUS"] = true,
        ["zhCN"] = false,
        ["zhTW"] = "重新編譯時跳過資料庫驗證。只有先啟用除錯的情況下才會進行驗證。",
        ["esES"] = "Omite la validación de la base de datos al volver a compilar. La validación solo está presente con la depuración activada.",
        ["frFR"] = "Passe la validation de la base de données lors de la recompilation. La validation n'est présente que lorsque le mode de débogage est activé dès le départ.",
    },
    ["Quel'Danas Settings"] = {
        ["ptBR"] = "Configuração de Quel'Danas",
        ["ruRU"] = "Настройки Кель'Данаса",
        ["deDE"] = "Quel'Danas Einstellungen",
        ["koKR"] = false,
        ["esMX"] = "Configuración de Quel'Danas",
        ["enUS"] = true,
        ["zhCN"] = false,
        ["zhTW"] = "奎爾達納斯設定",
        ["esES"] = "Configuración de Quel'Danas",
        ["frFR"] = "Paramètres de Quel'Danas",
    },
    ["Show Item IDs"] = {
        ["ptBR"] = "Mostrar IDs de itens",
        ["ruRU"] = "Показать ID предметов",
        ["deDE"] = "Gegenstand-IDs anzeigen",
        ["koKR"] = false,
        ["esMX"] = "Mostrar ID de artículo",
        ["enUS"] = true,
        ["zhCN"] = false,
        ["zhTW"] = "顯示物品 ID",
        ["esES"] = "Mostrar ID de artículo",
        ["frFR"] = "Afficher les ID d'objets",
    },
    ["When this is checked, the ID of items will shown in tooltips."] = {
        ["ptBR"] = "Quando isso estiver marcado, o ID dos itens será mostrado nas dicas de ferramentas.",
        ["ruRU"] = "Когда это включено, в подсказках будут отображаться ID предметов",
        ["deDE"] = "Wenn diese Option aktiviert ist, werden die Gegenstand-IDs in den Tooltips angezeigt.",
        ["koKR"] = false,
        ["esMX"] = "Si está marcado, la identificación de los artículos se mostrará en los tooltips.",
        ["enUS"] = true,
        ["zhCN"] = false,
        ["zhTW"] = "啟用時，會在浮動提示資訊中顯示物品 ID。",
        ["esES"] = "Si está marcado, la identificación de los artículos se mostrará en los tooltips.",
        ["frFR"] = "Si cette option est cochée, l'ID des objets sera affiché dans les infobulles.",
    },
    ["Show Object IDs"] = {
        ["ptBR"] = "Mostrar IDs de objetos",
        ["ruRU"] = "Показать ID объектов",
        ["deDE"] = "Objekt-IDs anzeigen",
        ["koKR"] = false,
        ["esMX"] = "Mostrar ID de objeto",
        ["enUS"] = true,
        ["zhCN"] = false,
        ["zhTW"] = "顯示物件 ID",
        ["esES"] = "Mostrar ID de objeto",
        ["frFR"] = "Afficher les IDs d'objets",
    },
    ["When this is checked, the ID of objects will be shown in tooltips. These are guesses and only show the first matching ID in the QuestieDB."] = {
        ["ptBR"] = "Quando isso estiver marcado, o ID dos objetos será mostrado nas dicas de ferramentas. Esses são palpites e mostram apenas o primeiro ID correspondente no QuestieDB.",
        ["ruRU"] = "Когда это включено, в подсказках будут отображаться ID объектов. Эти данные являются предполагаемыми, отображается только первый совпадающий ID в БД Questie",
        ["deDE"] = "Wenn diese Option aktiviert ist, werden die Objekt-IDs in den Tooltips angezeigt. Diese sind Schätzungen und zeigen nur die erste passende ID aus der QuestieDB.",
        ["koKR"] = false,
        ["esMX"] = "Si está marcado, la identificación de los objetos se mostrará en los tooltips. Estas son conjeturas y solo muestran la primera identificación coincidente en QuestieDB.",
        ["enUS"] = true,
        ["zhCN"] = false,
        ["zhTW"] = "啟用時，會在浮動提示資訊中顯示物品 ID。僅顯示 QuestieDB 中第一個符合的 ID，為猜測的值。",
        ["esES"] = "Si está marcado, la identificación de los objetos se mostrará en los tooltips. Estas son conjeturas y solo muestran la primera identificación coincidente en QuestieDB.",
        ["frFR"] = "Si cette option est cochée, l'ID des objets sera affiché dans les infobulles. Ce ne sont que des suppositions et ne montrent que le premier ID correspondant dans la base de données de Questie.",
    },
    ["Show NPC IDs"] = {
        ["ptBR"] = "Mostrar IDs dos NPCs",
        ["ruRU"] = "Показать ID NPC",
        ["deDE"] = "NPC-IDs anzeigen",
        ["koKR"] = false,
        ["esMX"] = "Mostrar ID de PNJ",
        ["enUS"] = true,
        ["zhCN"] = false,
        ["zhTW"] = "顯示 NPC ID",
        ["esES"] = "Mostrar ID de PNJ",
        ["frFR"] = "Afficher l'ID des PNJ",
    },
    ["When this is checked, the ID of NPCs will be shown in tooltips."] = {
        ["ptBR"] = "Quando isso estiver marcado, o ID dos NPCs será mostrado nas dicas de ferramentas.",
        ["ruRU"] = "Когда это включено, в подсказках будут отображаться ID NPC",
        ["deDE"] = "Wenn diese Option aktiviert ist, werden die NPC-IDs in den Tooltips angezeigt.",
        ["koKR"] = false,
        ["esMX"] = "Si está marcado, la identificación de los PNJs se mostrará en los tooltips.",
        ["enUS"] = true,
        ["zhCN"] = false,
        ["zhTW"] = "啟用時，會在浮動提示資訊中顯示 NPC ID。",
        ["esES"] = "Si está marcado, la identificación de los PNJs se mostrará en los tooltips.",
        ["frFR"] = "Si cette option est cochée, l'ID des PNJ sera affiché dans les infobulles.",
    },
}

for k, v in pairs(advancedOptionsLocales) do
    l10n.translations[k] = v
end