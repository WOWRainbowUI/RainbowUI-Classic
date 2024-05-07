local L = LibStub("AceLocale-3.0"):NewLocale("Spy", "esMX")
if not L then return end
-- TOC Note: Detecta y te alerta sobre la presencia de jugadores enemigos cercanos.

-- Configuration
L["Spy"] = "Spy"
L["Version"] = "Versión"
L["Spy Option"] = "Spy"
L["Profiles"] = "Perfiles"

-- About
L["About"] = "Sobre"
L["SpyDescription1"] = [[
Spy es un addon que te alertará sobre la presencia de jugadores enemigos cercanos. Estas son algunas de las características principales.

]]

L["SpyDescription2"] = [[
|cffffd000Lista de cercanos|cffffffff
Muestra jugadores enemigos que han sido detectados cerca. Los jugadores son eliminados de la lista si no han sido detectados después de un período de tiempo.

|cffffd000Lista de la última hora|cffffffff
Muestra todos los enemigos que han sido detectados en la última hora.

|cffffd000Lista de ignorados|cffffffff
Los jugadores que se añaden a la lista de ignorados no serán reportados por Spy. Puedes añadir y eliminar jugadores a esta lista utilizando el menú desplegable del botón o manteniendo presionada la tecla Control mientras haces clic en el botón.

|cffffd000Lista de matar a la vista|cffffffff
Los jugadores en tu lista de matar a la vista provocan una alarma cuando son detectados. Puedes añadir y eliminar jugadores a esta lista utilizando el menú desplegable del botón o manteniendo presionada la tecla Mayús mientras haces clic en el botón. El menú desplegable también se puede utilizar para establecer las razones por las que has añadido a alguien a la lista de matar a la vista. Si quieres introducir una razón específica que no esté en la lista, entonces utiliza "Introduce tu propia razón..." en la lista Otros.

]]

L["SpyDescription3"] = [[
|cffffd000Ventana de estadísticas|cffffffff
La ventana de estadísticas contiene una lista de todos los encuentros con enemigos que pueden ordenarse por nombre, nivel, hermandad, victorias, derrotas y la última vez que se detectó a un enemigo. También proporciona la capacidad de buscar un enemigo específico por nombre o hermandad y tiene filtros para mostrar solo enemigos marcados como matar a la vista, con una relación victorias/derrotas o razones introducidas.

|cffffd000Botón de matar a la vista|cffffffff
Si está activado, este botón estará ubicado en el marco del objetivo de los jugadores enemigos. Al hacer clic en este botón, se añadirá/eliminará el objetivo enemigo de la lista de matar a la vista. Al hacer clic derecho en el botón, podrás introducir razones para matar a la vista.

|cffffd000Autor:|cffffffff Slipjack
]]

-- General Settings
L["GeneralSettings"] = "Configuración general"
L["GeneralSettingsDescription"] = [[
Opciones cuando Spy está activado o desactivado.
]]
L["EnableSpy"] = "Activar Spy"
L["EnableSpyDescription"] = "Activa o desactiva Spy."
L["EnabledInBattlegrounds"] = "Activar Spy en campos de batalla"
L["EnabledInBattlegroundsDescription"] = "Activa o desactiva Spy cuando estás en un campo de batalla."
L["EnabledInArenas"] = "Activar Spy en arenas"
L["EnabledInArenasDescription"] = "Activa o desactiva Spy cuando estás en una arena."
L["EnabledInWintergrasp"] = "Activar Spy en zonas de combate mundial"
L["EnabledInWintergraspDescription"] = "Activa o desactiva Spy cuando estás en zonas de combate mundial como Lago Conquista de Invierno en Rasganorte."
L["DisableWhenPVPUnflagged"] = "Desactivar Spy cuando no estás marcado para JcJ"
L["DisableWhenPVPUnflaggedDescription"] = "Activa o desactiva Spy dependiendo de tu estado de JcJ."
L["DisabledInZones"] = "Desactivar Spy mientras estás en estas ubicaciones"
L["DisabledInZonesDescription"] = "Selecciona ubicaciones donde Spy estará desactivado."
L["Booty Bay"] = "Bahía del Botín"
L["Everlook"] = "Vista Eterna"						
L["Gadgetzan"] = "Gadgetzan"
L["Ratchet"] = "Trinquete"
L["The Salty Sailor Tavern"] = "Taberna del Grumete Frito"
L["Shattrath City"] = "Ciudad de Shattrath"
L["Area 52"] = "Area 52"
L["Dalaran"] = "Dalaran"
L["Dalaran (Northrend)"] = "Dalaran (Rasganorte)"
L["Bogpaddle"] = "Chapaleos"
L["The Vindicaar"] = "El Vindicaar"
L["Krasus' Landing"] = "Alto de Krasus"
L["The Violet Gate"] = "La Puerta Violeta"
L["Magni's Encampment"] = "Campamento de Magni"
L["Silithus"] = "Silithus"
L["Chamber of Heart"] = "Cámara del Corazón"
L["Hall of Ancient Paths"] = "Cámara de Sendas Ancestrales"
L["Sanctum of the Sages"] = "Santuario de los Sabios"
L["Rustbolt"] = "Pernoóxido"
L["Oribos"] = "Oribos"
L["Valdrakken"] = "Valdrakken"

-- Display
L["DisplayOptions"] = "Visualización"
L["DisplayOptionsDescription"] = [[
Opciones para la ventana de Spy y tooltips.
]]
L["ShowOnDetection"] = "Mostrar Spy cuando se detectan jugadores enemigos"
L["ShowOnDetectionDescription"] = "Establece esto para mostrar la ventana de Spy y la lista de cercanos si Spy está oculto cuando se detectan jugadores enemigos."
L["HideSpy"] = "Ocultar Spy cuando no se detectan jugadores enemigos"
L["HideSpyDescription"] = "Establece esto para ocultar Spy cuando se muestra la lista de cercanos y esta queda vacía. Spy no se ocultará si limpias la lista manualmente."
L["ShowOnlyPvPFlagged"] = "Mostrar solo jugadores enemigos marcados para JcJ"
L["ShowOnlyPvPFlaggedDescription"] = "Establece esto para mostrar solo jugadores enemigos marcados para JcJ en la lista de Cerca."
L["ShowKoSButton"] = "Mostrar botón MaV en el marco de objetivo del enemigo"
L["ShowKoSButtonDescription"] = "Establece esto para mostrar el botón MaV (matar a la vista) en el marco de objetivo del jugador enemigo."
L["Alpha"] = "Transparencia"
L["AlphaDescription"] = "Establece la transparencia de la ventana de Spy."
L["AlphaBG"] = "Transparencia en campos de batalla"
L["AlphaBGDescription"] = "Establece la transparencia de la ventana de Spy en campos de batalla."
L["LockSpy"] = "Bloquear la ventana"
L["LockSpyDescription"] = "Bloquea la ventana de Spy para que no se mueva."
L["ClampToScreen"] = "Limitar la pantalla"
L["ClampToScreenDescription"] = "Controla si la ventana de Spy se puede arrastrar fuera de la pantalla."
L["InvertSpy"] = "Invertir la ventana"
L["InvertSpyDescription"] = "Voltea la ventana de Spy boca abajo."
L["Reload"] = "Recargar IU"
L["ReloadDescription"] = "Necesario al cambiar la ventana de Spy."
L["ResizeSpy"] = "Redimensionar la ventana de Spy automáticamente"
L["ResizeSpyDescription"] = "Establece esto para redimensionar automáticamente la ventana de Spy a medida que se agregan y eliminan jugadores enemigos."
L["ResizeSpyLimit"] = "Límite de lista"
L["ResizeSpyLimitDescription"] = "Limita el número de jugadores enemigos mostrados en la ventana de Spy."
L["DisplayTooltipNearSpyWindow"] = "Mostrar tooltips cerca de la ventana de Spy"
L["DisplayTooltipNearSpyWindowDescription"] = "Establece esto para mostrar tooltips cerca de la ventana de Spy."
L["SelectTooltipAnchor"] = "Punto de anclaje del tooltip"
L["SelectTooltipAnchorDescription"] = "Selecciona el punto de anclaje para el tooltip si la opción anterior ha sido marcada"
L["ANCHOR_CURSOR"] = "Cursor"
L["ANCHOR_TOP"] = "Arriba"
L["ANCHOR_BOTTOM"] = "Abajo"
L["ANCHOR_LEFT"] = "Izquierda"			
L["ANCHOR_RIGHT"] = "Derecha"
L["TooltipDisplayWinLoss"] = "Mostrar estadísticas de victorias/derrotas en el tooltip"
L["TooltipDisplayWinLossDescription"] = "Establece esto para mostrar las estadísticas de victorias/derrotas de un jugador en el tooltip del jugador."
L["TooltipDisplayKOSReason"] = "Mostrar razones de matar a la vista en el tooltip"
L["TooltipDisplayKOSReasonDescription"] = "Establece esto para mostrar las razones de matar a la vista de un jugador en el tooltip del jugador."
L["TooltipDisplayLastSeen"] = "Mostrar detalles del último avistamiento en el tooltip"
L["TooltipDisplayLastSeenDescription"] = "Establece esto para mostrar la última hora y ubicación conocidas de un jugador en el tooltip del jugador."
L["DisplayListData"] = "Seleccionar datos para mostrar"
L["Name"] = "Nombre"
L["Class"] = "Clase"
L["Rank"] = "Rango"
L["SelectFont"] = "Seleccionar fuente"
L["SelectFontDescription"] = "Selecciona una fuente para la ventana de Spy."
L["RowHeight"] = "Seleccionar la altura de fila"
L["RowHeightDescription"] = "Selecciona la altura de fila para la ventana de Spy."
L["Texture"] = "Textura"
L["TextureDescription"] = "Selecciona una textura para la ventana de Spy"

-- Alerts
L["AlertOptions"] = "Alertas"
L["AlertOptionsDescription"] = [[
Opciones para alertas, anuncios y advertencias cuando se detectan jugadores enemigos.
]]
L["SoundChannel"] = "Seleccionar canal de sonido"
L["Master"] = "Principal"
L["SFX"] = "Efectos de sonido"
L["Music"] = "Música"
L["Ambience"] = "Ambiente"
L["Announce"] = "Enviar anuncios a:"
L["None"] = "Ninguno"
L["NoneDescription"] = "No anuncia cuando se detectan jugadores enemigos."
L["Self"] = "Personal"
L["SelfDescription"] = "Anuncia para ti mismo cuando se detectan jugadores enemigos."
L["Party"] = "Grupo"
L["PartyDescription"] = "Anuncia a tu grupo cuando se detectan jugadores enemigos."
L["Guild"] = "Hermandad"
L["GuildDescription"] = "Anuncia a tu hermandad cuando se detectan jugadores enemigos."
L["Raid"] = "Banda"
L["RaidDescription"] = "Anuncia a tu banda cuando se detectan jugadores enemigos."
L["LocalDefense"] = "Defensa Local"
L["LocalDefenseDescription"] = "Anuncia al canal de Defensa Local cuando se detectan jugadores enemigos."
L["OnlyAnnounceKoS"] = "Solo anunciar jugadores enemigos marcados para matar a la vista"
L["OnlyAnnounceKoSDescription"] = "Establece esto para solo anunciar jugadores enemigos que estén en tu lista de matar a la vista."
L["WarnOnStealth"] = "Advertir al detectar sigilo"
L["WarnOnStealthDescription"] = "Establece esto para mostrar una advertencia y sonar una alerta cuando un jugador enemigo entra en sigilo."
L["WarnOnKOS"] = "Advertir al detectar matar a la vista"
L["WarnOnKOSDescription"] = "Establece esto para mostrar una advertencia y sonar una alerta cuando se detecta un jugador enemigo en tu lista de matar a la vista."
L["WarnOnKOSGuild"] = "Advertir al detectar hermandad matar a la vista"
L["WarnOnKOSGuildDescription"] = "Establece esto para mostrar una advertencia y sonar una alerta cuando se detecta un jugador enemigo en la misma hermandad que alguien en tu lista de matar a la vista."
L["WarnOnRace"] = "Advertir al detectar raza"
L["WarnOnRaceDescription"] = "Establece esto para sonar una alerta cuando se detecta la raza seleccionada."
L["SelectWarnRace"] = "Seleccionar raza para detectar"
L["SelectWarnRaceDescription"] = "Selecciona una raza para la alerta de audio."
L["WarnRaceNote"] = "Nota: Debes apuntar al menos una vez a un enemigo para que su raza se añada a la base de datos. En la próxima detección sonará una alerta. Esto no funciona de la misma manera que detectar enemigos cercanos en combate."
L["DisplayWarningsInErrorsFrame"] = "Mostrar advertencias en el marco de errores"
L["DisplayWarningsInErrorsFrameDescription"] = "Establece esto para usar el marco de errores para mostrar advertencias en lugar de usar los marcos emergentes gráficos."
L["DisplayWarnings"] = "Seleccionar ubicación del mensaje de advertencia"
L["Default"] = "Predeterminado"
L["ErrorFrame"] = "Marco de error"
L["Moveable"] = "Movible"
L["EnableSound"] = "Activar alertas de audio"
L["EnableSoundDescription"] = "Establece esto para activar alertas de audio cuando se detectan jugadores enemigos. Diferentes alertas suenan si un jugador enemigo entra en sigilo o si un jugador enemigo está en tu lista de matar a la vista."
L["OnlySoundKoS"] = "Solo sonar alertas de audio para la detección de matar a la vista"
L["OnlySoundKoSDescription"] = "Establece esto para solo reproducir alertas de audio cuando se detectan jugadores enemigos en la lista de matar a la vista."
L["StopAlertsOnTaxi"] = "Desactivar alertas mientras estás en un camino de vuelo"
L["StopAlertsOnTaxiDescription"] = "Detiene todas las nuevas alertas y advertencias mientras estás en un camino de vuelo."

-- Nearby List
L["ListOptions"] = "Lista de cercanos"
L["ListOptionsDescription"] = [[
Opciones sobre cómo se añaden y eliminan jugadores enemigos.
]]
L["RemoveUndetected"] = "Eliminar jugadores enemigos de la lista de cercanos después de:"
L["1Min"] = "1 minuto"
L["1MinDescription"] = "Elimina un jugador enemigo que no ha sido detectado durante más de 1 minuto."
L["2Min"] = "2 minutos"
L["2MinDescription"] = "Elimina un jugador enemigo que no ha sido detectado durante más de 2 minutos."
L["5Min"] = "5 minutos"
L["5MinDescription"] = "Elimina un jugador enemigo que no ha sido detectado durante más de 5 minutos."
L["10Min"] = "10 minutos"
L["10MinDescription"] = "Elimina un jugador enemigo que no ha sido detectado durante más de 10 minutos."
L["15Min"] = "15 minutos"
L["15MinDescription"] = "Elimina un jugador enemigo que no ha sido detectado durante más de 15 minutos."
L["Never"] = "Nunca eliminar"
L["NeverDescription"] = "Nunca elimina jugadores enemigos. La lista de cercanos aún se puede limpiar manualmente."
L["ShowNearbyList"] = "Cambiar a la lista de cercanos al detectar jugadores enemigos"
L["ShowNearbyListDescription"] = "Establece esto para mostrar la lista de cercanos si no está visible cuando se detectan jugadores enemigos."
L["PrioritiseKoS"] = "Priorizar jugadores enemigos de matar a la vista en la lista de cercanos"
L["PrioritiseKoSDescription"] = "Establece esto para mostrar siempre primero los jugadores enemigos de matar a la vista en la lista de cercanos."

-- Map
L["MapOptions"] = "Mapa"
L["MapOptionsDescription"] = [[
Opciones para el mapa del mundo y el minimapa, incluidos iconos y tooltips.
]]
L["MinimapDetection"] = "Activar detección en el minimapa"
L["MinimapDetectionDescription"] = "Al pasar el cursor sobre jugadores enemigos conocidos detectados en el minimapa, se agregarán a la lista de cercanos."
L["MinimapNote"] = "          Nota: Solo funciona para jugadores que pueden rastrear humanoides."
L["MinimapDetails"] = "Mostrar detalles de nivel/clase en los tooltips"
L["MinimapDetailsDescription"] = "Establece esto para actualizar los tooltips del mapa para que se muestren detalles de nivel/clase junto a los nombres de los enemigos."
L["DisplayOnMap"] = "Mostrar iconos en el mapa"
L["DisplayOnMapDescription"] = "Muestra iconos en el mapa para la ubicación de otros usuarios de Spy en tu grupo, banda y hermandad cuando detectan enemigos."
L["SwitchToZone"] = "Cambiar al mapa de la zona actual al detectar enemigos"
L["SwitchToZoneDescription"] = "Cambia el mapa al mapa de la zona actual del jugador cuando se detectan enemigos."
L["MapDisplayLimit"] = "Limitar iconos del mapa mostrados a:"
L["LimitNone"] = "En todas partes"
L["LimitNoneDescription"] = "Muestra todos los enemigos detectados en el mapa sin importar tu ubicación actual."
L["LimitSameZone"] = "Misma zona"
L["LimitSameZoneDescription"] = "Solo muestra enemigos detectados en el mapa si estás en la misma zona."
L["LimitSameContinent"] = "Mismo continente"
L["LimitSameContinentDescription"] = "Solo muestra enemigos detectados en el mapa si estás en el mismo continente."

-- Data Management
L["DataOptions"] = "Gestión de datos"
L["DataOptionsDescription"] = [[

Opciones sobre cómo Spy mantiene y recopila datos.
]]
L["PurgeData"] = "Eliminar datos de jugadores enemigos no detectados después de:"
L["OneDay"] = "1 día"
L["OneDayDescription"] = "Elimina datos de jugadores enemigos que no han sido detectados durante 1 día."
L["FiveDays"] = "5 días"
L["FiveDaysDescription"] = "Elimina datos de jugadores enemigos que no han sido detectados durante 5 días."
L["TenDays"] = "10 días"
L["TenDaysDescription"] = "Elimina datos de jugadores enemigos que no han sido detectados durante 10 días."
L["ThirtyDays"] = "30 días"
L["ThirtyDaysDescription"] = "Elimina datos de jugadores enemigos que no han sido detectados durante 30 días."
L["SixtyDays"] = "60 días"
L["SixtyDaysDescription"] = "Elimina datos de jugadores enemigos que no han sido detectados durante 60 días."
L["NinetyDays"] = "90 días"
L["NinetyDaysDescription"] = "Elimina datos de jugadores enemigos que no han sido detectados durante 90 días."
L["PurgeKoS"] = "Eliminar jugadores de matar a la vista basados en el tiempo no detectado."
L["PurgeKoSDescription"] = "Establece esto para eliminar jugadores de matar a la vista que no han sido detectados según la configuración de tiempo para jugadores no detectados."
L["PurgeWinLossData"] = "Eliminar datos de victorias/derrotas basados en el tiempo no detectado."
L["PurgeWinLossDataDescription"] = "Establece esto para eliminar los datos de victorias/derrotas de tus encuentros con enemigos según la configuración de tiempo para jugadores no detectados."
L["ShareData"] = "Compartir datos con otros usuarios de Spy"
L["ShareDataDescription"] = "Establece esto para compartir los detalles de tus encuentros con jugadores enemigos con otros usuarios de Spy en tu grupo, banda y hermandad."
L["UseData"] = "Usar datos de otros usuarios de Spy"
L["UseDataDescription"] = "Establece esto para usar los datos recopilados por otros usuarios de Spy en tu grupo, banda y hermandad."
L["ShareKOSBetweenCharacters"] = "Compartir jugadores de matar a la vista entre tus personajes"
L["ShareKOSBetweenCharactersDescription"] = "Establece esto para compartir los jugadores que marques como matar a la vista entre otros personajes que juegues en el mismo servidor y facción."

-- Commands
L["SlashCommand"] = "Comando de barra diagonal"
L["SpySlashDescription"] = "Estos botones ejecutan las mismas funciones que las del comando de barra diagonal /spy."
L["Enable"] = "Activar"
L["EnableDescription"] = "Activa Spy y muestra la ventana principal."
L["Show"] = "Mostrar"
L["ShowDescription"] = "Muestra la ventana principal."
L["Hide"] = "Ocultar"
L["HideDescription"] = "Oculta la ventana principal."
L["Reset"] = "Restablecer"
L["ResetDescription"] = "Restablece la posición y apariencia de la ventana principal."
L["ClearSlash"] = "Limpiar"
L["ClearSlashDescription"] = "Borra la lista de jugadores que han sido detectados."
L["Config"] = "Configurar"
L["ConfigDescription"] = "Abre la ventana de configuración de Addons de la interfaz para Spy."
L["KOS"] = "MaV"
L["KOSDescription"] = "Añade/elimina un jugador de la lista de matar a la vista."
L["InvalidInput"] = "Entrada no válida"
L["Ignore"] = "Ignorados"
L["IgnoreDescription"] = "Añade/elimina un jugador de la lista de Ignorados."
L["Test"] = "Prueba"
L["TestDescription"] = "Muestra una advertencia para que pueda reposicionarla."

-- Lists
L["Nearby"] = "Cercanos"
L["LastHour"] = "Última hora"
L["Ignore"] = "Ignorados"
L["KillOnSight"] = "Matar a la Vista"

--Stats
L["Won"] = "Ganado"
L["Lost"] = "Perdido"
L["Time"] = "Tiempo"
L["List"] = "Lista"
L["Filter"] = "Filtro"
L["Show Only"] = "Mostrar solo"
L["Realm"] = "Reino"
L["KOS"] = "MaV"
L["Won/Lost"] = "Ganado/Perdido"
L["Reason"] = "Razón"
L["HonorKills"] = "Muertes con honor"
L["PvPDeaths"] = "Muertes de JcJ"

-- Output Messages
L["VersionCheck"] = "|cffc41e3a¡Advertencia! La versión incorrecta de Spy está instalada. Esta versión es para World of Warcraft Classic."
L["SpyEnabled"] = "|cff9933ffAddon Spy activado."
L["SpyDisabled"] = "|cff9933ffAddon Spy desactivado. Escribe |cffffffff/spy show|cff9933ff para activarlo."
L["UpgradeAvailable"] = "|cff9933ffHay disponible una nueva versión de Spy. Puede descargarse desde:\n|cffffffffhttps://www.curseforge.com/wow/addons/spy-classic"
L["AlertStealthTitle"] = "¡Jugador en sigilo detectado!"
L["AlertKOSTitle"] = "¡Jugador en la lista de matar a la vista detectado!"
L["AlertKOSGuildTitle"] = "¡Guild de jugador en la lista de matar a la vista detectado!"
L["AlertTitle_kosaway"] = "Jugador en la lista de matar a la vista localizado por "
L["AlertTitle_kosguildaway"] = "Guild de jugador en la lista de matar a la vista localizado por "
L["StealthWarning"] = "|cff9933ffJugador en sigilo detectado: |cffffffff"
L["KOSWarning"] = "|cffff0000Jugador en la lista de matar a la vista detectado: |cffffffff"
L["KOSGuildWarning"] = "|cffff0000Guild de jugador en la lista de matar a la vista detectado: |cffffffff"
L["SpySignatureColored"] = "|cff9933ff[Spy] "
L["PlayerDetectedColored"] = "Jugador detectado: |cffffffff"
L["PlayersDetectedColored"] = "Jugadores detectados: |cffffffff"
L["KillOnSightDetectedColored"] = "Jugador en la lista de matar a la vista detectado: |cffffffff"
L["PlayerAddedToIgnoreColored"] = "Jugador añadido a la lista de Ignorados: |cffffffff"
L["PlayerRemovedFromIgnoreColored"] = "Jugador eliminado de la lista de Ignorados: |cffffffff"
L["PlayerAddedToKOSColored"] = "Jugador añadido a la lista de matar a la vista: |cffffffff"
L["PlayerRemovedFromKOSColored"] = "Jugador eliminado de la lista de matar a la vista: |cffffffff"
L["PlayerDetected"] = "[Spy] Jugador detectado: "
L["KillOnSightDetected"] = "[Spy] Jugador en la lista de matar a la vista detectado: "
L["Level"] = "Nivel"
L["LastSeen"] = "Última vez visto"
L["LessThanOneMinuteAgo"] = "hace menos de un minuto"
L["MinutesAgo"] = "minutos atrás"
L["HoursAgo"] = "horas atrás"
L["DaysAgo"] = "días atrás"
L["Close"] = "Cerrar"
L["CloseDescription"] = "|cffffffffOculta la ventana de Spy. Por defecto, se mostrará de nuevo cuando se detecte al próximo jugador enemigo."
L["Left/Right"] = "Izquierda/Derecha"
L["Left/RightDescription"] = "|cffffffffNavega entre las listas de cercanos, última hora, ignorados y matar a la vista."
L["Clear"] = "Limpiar"
L["ClearDescription"] = "|cffffffffLimpia la lista de jugadores detectados. CTRL+Clic activará/desactivará Spy. Mayús+Clic activará/desactivará todos los sonidos."
L["SoundEnabled"] = "Alertas de audio activadas"
L["SoundDisabled"] = "Alertas de audio desactivadas"
L["NearbyCount"] = "Cantidad de cercanos"
L["NearbyCountDescription"] = "|cffffffffCantidad de jugadores cercanos."
L["Statistics"] = "Estadísticas"
L["StatsDescription"] = "|cffffffffMuestra una lista de encuentros con jugadores enemigos, registros de victorias/derrotas y dónde fueron vistos por última vez."
L["AddToIgnoreList"] = "Añadir a lista de Ignorar"
L["AddToKOSList"] = "Añadir a lista de matar a la vista"
L["RemoveFromIgnoreList"] = "Eliminar de lista de Ignorar"
L["RemoveFromKOSList"] = "Eliminar de lista de matar a la vista"
L["RemoveFromStatsList"] = "Eliminar de la lista de estadísticas"   
L["AnnounceDropDownMenu"] = "Anunciar"
L["KOSReasonDropDownMenu"] = "Establecer razón de matar a la vista"
L["PartyDropDownMenu"] = "Grupo"
L["RaidDropDownMenu"] = "Banda"
L["GuildDropDownMenu"] = "Hermandad"
L["LocalDefenseDropDownMenu"] = "Defensa Local"
L["Player"] = " (Jugador)"
L["KOSReason"] = "matar a la vista"
L["KOSReasonIndent"] = "    "
L["KOSReasonOther"] = "Introduce tu propia razón..."
L["KOSReasonClear"] = "Borrar razón"
L["StatsWins"] = "|cff40ff00Victorias: "
L["StatsSeparator"] = "  "
L["StatsLoses"] = "|cff0070ddDerrotas: "
L["Located"] = "localizado:"
L["Yards"] = "metros"
L["LocalDefenseChannelName"] = "DefensaLocal"

Spy_KOSReasonListLength = 6
Spy_KOSReasonList = {
	[1] = {
		["title"] = "Combate iniciado";
		["content"] = {
			"Atacó sin razón alguna",
			"Atacó cerca de un PNJ de misión",
			"Atacó mientras estaba luchando contra PNJs",
			"Atacó mientras estaba cerca de una instancia",
			"Atacó mientras estaba ausente",
			"Atacó mientras estaba montado/volando",
			"Atacó mientras tenía poca salud/mana",
		};
	},
	[2] = {
		["title"] = "Estilo de combate";
		["content"] = {
			"Me emboscó",
			"Siempre me ataca a la vista",
			"Me mató con un personaje de nivel superior",
			"Me aplastó con un grupo de enemigos",
			"No ataca sin respaldo",
			"Siempre pide ayuda",
			"Usa demasiado control de masas",
		};
	},
	[3] = {
		["title"] = "Acampar";
		["content"] = {
			"Me acampó",
			"Acampó a un alterno",
			"Acampó a jugadores de nivel bajo",
			"Acampó en sigilo",
			"Acampó a miembros de la hermandad",
			"Acampó PNJs/objetivos del juego",
			"Acampó una ciudad/sitio",
		};
	},
	[4] = {
		["title"] = "Misiones";
		["content"] = {
			"Me atacó mientras estaba haciendo misiones",
			"Me atacó después de que ayudé con una misión",
			"Interfirió con un objetivo de misión",
			"Comenzó una misión que quería hacer",
			"Mató a los PNJs de mi facción",
			"Mató a un PNJ de misión",
		};
	},
	[5] = {
		["title"] = "Robo de recursos";
		["content"] = {
			"Recolectó hierbas que quería",
			"Recolectó minerales que quería",
			"Recolectó recursos que quería",
			"Me mató y robó mi objetivo/PNJ raro",
			"Desolló mis presas",
			"Despojó mis presas",
			"Pescó en mi poza",
		};
	},
	[6] = {
		["title"] = "Otros";
		["content"] = {
			"Marcado para JcJ",
			"Me empujó por un precipicio",
			"Usa trucos de ingeniería",
			"Siempre logra escapar",
			"Usa objetos y habilidades para escapar",
			"Explota las mecánicas del juego",
			"Introduce tu propia razón...",
		};
	},
}

StaticPopupDialogs["Spy_SetKOSReasonOther"] = {
	preferredIndex=STATICPOPUPS_NUMDIALOGS,  -- http://forums.wowace.com/showthread.php?p=320956
	text = "Introduce la razón de matar a la vista para %s:",
	button1 = "Establecer",
	button2 = "Cancelar",
	timeout = 120,
	hasEditBox = 1,
	editBoxWidth = 260,	
	whileDead = 1,
	hideOnEscape = 1,
	OnShow = function(self)
		self.editBox:SetText("");
	end,
   	OnAccept = function(self)
		local reason = self.editBox:GetText()
		Spy:SetKOSReason(self.playerName, "Introduce tu propia razón...", reason)
	end,
};

-- Class descriptions
L["UNKNOWN"] = "Desconocido"
L["DRUID"] = "Druida"
L["HUNTER"] = "Cazador"
L["MAGE"] = "Mago"
L["PALADIN"] = "Paladín"
L["PRIEST"] = "Sacerdote"
L["ROGUE"] = "Pícaro"
L["SHAMAN"] = "Chamán"
L["WARLOCK"] = "Brujo"
L["WARRIOR"] = "Guerrero"
L["DEATHKNIGHT"] = "Caballero de la muerte"
L["MONK"] = "Monje"
L["DEMONHUNTER"] = "Cazador de demonios"
L["EVOKER"] = "Evocador"

-- Race descriptions
L["Human"] = "Humano"
L["Orc"] = "Orco"
L["Dwarf"] = "Enano"
L["Tauren"] = "Tauren"
L["Troll"] = "Trol"
L["Night Elf"] = "Elfo de la noche"
L["Undead"] = "No-muerto"
L["Gnome"] = "Gnomo"
L["Blood Elf"] = "Elfo de sangre"
L["Draenei"] = "Draenei"
L["Goblin"] = "Goblin"
L["Worgen"] = "Huargen"
L["Pandaren"] = "Pandaren"
L["Highmountain Tauren"] = "Tauren Monte Alto"
L["Lightforged Draenei"] = "Draenei forjado por la Luz"
L["Nightborne"] = "Nocheterna"
L["Void Elf"] = "Elfo del Vacío"
L["Dark Iron Dwarf"] = "Enano Hierro Negro"
L["Mag'har Orc"] = "Orco Mag'har"
L["Kul Tiran"] = "Ciudadano de Kul Tiras"
L["Zandalari Troll"] = "Trol Zandalari"
L["Mechagnome"] = "Mecagnomo"
L["Vulpera"] = "Vulpera"
L["Dracthyr"] = "Dracthyr"
 
-- Stealth abilities
L["Stealth"] = "Sigilo"
L["Prowl"] = "Acechar"
 
-- Minimap color codes
L["MinimapGuildText"] = "|cffffffff"
L["MinimapClassTextUNKNOWN"] = "|cff191919"
L["MinimapClassTextDRUID"] = "|cffff7c0a"
L["MinimapClassTextHUNTER"] = "|cffaad372"
L["MinimapClassTextMAGE"] = "|cff68ccef"
L["MinimapClassTextPALADIN"] = "|cfff48cba"
L["MinimapClassTextPRIEST"] = "|cffffffff"
L["MinimapClassTextROGUE"] = "|cfffff468"
L["MinimapClassTextSHAMAN"] = "|cff2359ff"
L["MinimapClassTextWARLOCK"] = "|cff9382c9"
L["MinimapClassTextWARRIOR"] = "|cffc69b6d"
L["MinimapClassTextDEATHKNIGHT"] = "|cffc41e3a"
L["MinimapClassTextMONK"] = "|cff00ff96"
L["MinimapClassTextDEMONHUNTER"] = "|cffa330c9"
L["MinimapClassTextEVOKER"] = "|cff33937f"

Spy_AbilityList = {
-----------------------------------------------------------
-- Allows an estimation of the race, class and level of a
-- player based on the abilities observed in the combat log.
-----------------------------------------------------------

--++ Racial Traits ++	
	["Fusión de las Sombras"]={ class = "Night Elf", level = 1, },
	["Furia sangrienta"]={ class = "Orc", level = 1, },
	["Voluntad de los Renegados"]={ class = "Undead", level = 1, },
	["Petraforma"]={ class = "Dwarf", level = 1, },
	["Iracundia"]={ class = "Troll", level = 1, },
	["Firmeza"]={ class = "Orc", level = 1, },
	["Especialización en espada"]={ class = "Human", level = 1, },
	["Artista del escape"]={ class = "Gnome", level = 1, },
	["El espíritu humano"]={ class = "Human", level = 1, },
	["Regeneración"]={ class = "Troll", level = 1, },
	["Percepción"]={ class = "Human", level = 1, },
	["Aguante"]={ class = "Tauren", level = 1, },
	["Especialización en arcos"]={ class = "Troll", level = 1, },
	["Cultivo"]={ class = "Tauren", level = 1, },
	["Especialización de ingeniería"]={ class = "Gnome", level = 1, },
	["Pisotón de guerra"]={ class = "Tauren", level = 1, },
	["Matanza de bestias"]={ class = "Troll", level = 1, },
	["Buscar tesoro"]={ class = "Dwarf", level = 1, },
	["Especialización en hachas"]={ class = "Orc", level = 1, },
	["Canibalizar"]={ class = "Undead", level = 1, },
	["Diplomacia"]={ class = "Human", level = 1, },
	["Prontitud"]={ class = "Night Elf", level = 1, },
	["Especialización en lanzamiento"]={ class = "Troll", level = 1, },
	["Especialización con mazas"]={ class = "Human", level = 1, },
	["Especialización en armas de fuego"]={ class = "Dwarf", level = 1, },
	["Respiración subacuática"]={ class = "Undead", level = 1, },
	["Comandar"]={ class = "Orc", level = 1, },
	["Resistencia a la naturaleza"]={ class = "Night Elf", level = 1, },
	["Resistencia a la Escarcha"]={ class = "Dwarf", level = 1, },
	["Resistencia a las Sombras"]={ class = "Undead", level = 1, },
	["Resistencia Arcana"]={ class = "Gnome", level = 1, },
	["Espíritu de fuego fatuo"]={ class = "Night Elf", level = 1, },

	--++ Druid Abilities ++	
	["Toque curativo"]={ class = "DRUID", level = 1, },
	["Cólera"]={ class = "DRUID", level = 1, },
	["Fuegolunar"]={ class = "DRUID", level = 4, },
	["Enredaderas"]={ class = "DRUID", level = 8, },
	["Forma de oso"]={ class = "DRUID", level = 10, },
	["Clamor desmoralizador"]={ class = "DRUID", level = 10, },
	["Bramido"]={ class = "DRUID", level = 10, },
	["Machaque"]={ class = "DRUID", level = 10, },
	["Teletransporte a: Claro de la Luna"]={ class = "DRUID", level = 10, },
	["Enfurecer"]={ class = "DRUID", level = 12, },
	["Recrecimiento"]={ class = "DRUID", level = 12, },
	["Azote"]={ class = "DRUID", level = 14, },
	["Forma acuática"]={ class = "DRUID", level = 16, },
	["Flagelo"]={ class = "DRUID", level = 16, },
	["Fuego feérico"]={ class = "DRUID", level = 18, },
	["Hibernar"]={ class = "DRUID", level = 18, },
	["Forma felina"]={ class = "DRUID", level = 20, },
	["Zarpa"]={ class = "DRUID", level = 20, },
	["Acechar"]={ class = "DRUID", level = 20, },
	["Renacer"]={ class = "DRUID", level = 20, },
	["Destripar"]={ class = "DRUID", level = 20, },
	["Fuego estelar"]={ class = "DRUID", level = 20, },
	["Triturar"]={ class = "DRUID", level = 22, },
	["Calmar animal"]={ class = "DRUID", level = 22, },
	["Arañazo"]={ class = "DRUID", level = 24, },
	["Deshacer maldición"]={ class = "DRUID", level = 24, },
	["Furia del tigre"]={ class = "DRUID", level = 24, },
	["Suprimir veneno"]={ class = "DRUID", level = 26, },
	["Diligencia"]={ class = "DRUID", level = 26, },
	["Clamor desafiante"]={ class = "DRUID", level = 28, },
	["Pavor"]={ class = "DRUID", level = 28, },
	["Forma de viaje"]={ class = "DRUID", level = 30, },
	["Mordedura feroz"]={ class = "DRUID", level = 32, },
	["Devastar"]={ class = "DRUID", level = 32, },
	["Regeneración frenética"]={ class = "DRUID", level = 36, },
	["Lanzarse"]={ class = "DRUID", level = 36, },
	["Forma de oso nefasto"]={ class = "DRUID", level = 40, },
--++ Druid Talents ++	
	["Gracia de la naturaleza"]={ class = "DRUID", level = 10, },
	["Embestida feral"]={ class = "DRUID", level = 20, },
	["Enjambre de insectos"]={ class = "DRUID", level = 20, },
	["Augurio de claridad"]={ class = "DRUID", level = 20, },
	["Fuego feérico (feral)"]={ class = "DRUID", level = 30, },
--++ Hunter Abilities ++	
	["Presteza"]={ class = "HUNTER", level = 1, },
	["Tiro automático"]={ class = "HUNTER", level = 1, },
	["Golpe de raptor"]={ class = "HUNTER", level = 1, },
	["Rastrear bestias"]={ class = "HUNTER", level = 1, },
	["Aspecto del mono"]={ class = "HUNTER", level = 4, },
	["Aguijón de serpiente"]={ class = "HUNTER", level = 4, },
	["Tiro Arcano"]={ class = "HUNTER", level = 6, },
	["Marca del cazador"]={ class = "HUNTER", level = 6, },
	["Disparo de concusión"]={ class = "HUNTER", level = 8, },
	["Aspecto del halcón"]={ class = "HUNTER", level = 10, },
	["Llamar a mascota"]={ class = "HUNTER", level = 10, },
	["Retirar mascota"]={ class = "HUNTER", level = 10, },
	["Alimentar mascota"]={ class = "HUNTER", level = 10, },
	["Revivir mascota"]={ class = "HUNTER", level = 10, },
	["Domesticar bestia"]={ class = "HUNTER", level = 10, },
	["Disparo de distracción"]={ class = "HUNTER", level = 12, },
	["Sanar mascota"]={ class = "HUNTER", level = 12, },
	["Cortar alas"]={ class = "HUNTER", level = 12, },
	["Ojo de águila"]={ class = "HUNTER", level = 14, },
	["Ojos de la bestia"]={ class = "HUNTER", level = 14, },
	["Bestia temible"]={ class = "HUNTER", level = 14, },
	["Trampa de inmolación"]={ class = "HUNTER", level = 16, },
	["Mordedura de mangosta"]={ class = "HUNTER", level = 16, },
	["Multidisparo"]={ class = "HUNTER", level = 18, },
	["Rastrear no-muertos"]={ class = "HUNTER", level = 18, },
	["Aspecto del guepardo"]={ class = "HUNTER", level = 20, },
	["Separación"]={ class = "HUNTER", level = 20, },
	["Trampa congelante"]={ class = "HUNTER", level = 20, },
	["Aguijón de escorpido"]={ class = "HUNTER", level = 22, },
	["Tradición de bestias"]={ class = "HUNTER", level = 24, },
	["Rastrear lo oculto"]={ class = "HUNTER", level = 24, },
	["Fuego veloz"]={ class = "HUNTER", level = 26, },
	["Rastrear elementales"]={ class = "HUNTER", level = 26, },
	["Trampa de Escarcha"]={ class = "HUNTER", level = 28, },
	["Aspecto de la bestia"]={ class = "HUNTER", level = 30, },
	["Fingir muerte"]={ class = "HUNTER", level = 30, },
	["Bengala"]={ class = "HUNTER", level = 32, },
	["Rastrear demonios"]={ class = "HUNTER", level = 32, },
	["Trampa explosiva"]={ class = "HUNTER", level = 34, },
	["Picadura de víbora"]={ class = "HUNTER", level = 36, },
	["Aspecto de la manada"]={ class = "HUNTER", level = 40, },
	["Rastrear gigantes"]={ class = "HUNTER", level = 40, },
	["Lluvia"]={ class = "HUNTER", level = 40, },
	["Aspecto salvaje"]={ class = "HUNTER", level = 46, },
	["Rastrear dragonantes"]={ class = "HUNTER", level = 50, },
	["Disparo tranquilizante"]={ class = "HUNTER", level = 60, },
--++ Hunter Talents ++	
	["Tiro de puntería"]={ class = "HUNTER", level = 20, },
	["Disuasión"]={ class = "HUNTER", level = 20, },
	["Contraataque"]={ class = "HUNTER", level = 30, },
	["Intimidación"]={ class = "HUNTER", level = 30, },
	["Disparo disperso"]={ class = "HUNTER", level = 30, },
	["Ira de bestias"]={ class = "HUNTER", level = 40, },
	["Aguijón de dracoleón"]={ class = "HUNTER", level = 40, },
--++ Mage Abilities ++	
	["Bola de Fuego"]={ class = "MAGE", level = 1, },
	["Armadura de Escarcha"]={ class = "MAGE", level = 1, },
	["Descarga de Escarcha"]={ class = "MAGE", level = 4, },
	["Conjurar agua"]={ class = "MAGE", level = 4, },
	["Explosión de Fuego"]={ class = "MAGE", level = 6, },
	["Conjurar comida"]={ class = "MAGE", level = 6, },
	["Misiles Arcanos"]={ class = "MAGE", level = 8, },
	["Polimorfia"]={ class = "MAGE", level = 8, },
	["Nova de Escarcha"]={ class = "MAGE", level = 10, },
	["Deflagración Arcana"]={ class = "MAGE", level = 14, },
	["Detectar magia"]={ class = "MAGE", level = 16, },
	["Fogonazo"]={ class = "MAGE", level = 16, },
	["Deshacer maldición inferior"]={ class = "MAGE", level = 18, },
	["Traslación"]={ class = "MAGE", level = 20, },
	["Ventisca"]={ class = "MAGE", level = 20, },
	["Evocación"]={ class = "MAGE", level = 20, },
	["Custodia de Fuego"]={ class = "MAGE", level = 20, },
	["Escudo de maná"]={ class = "MAGE", level = 20, },
	["Teletransporte a: Forjaz"]={ class = "MAGE", level = 20, },
	["Teletransporte a: Orgrimmar"]={ class = "MAGE", level = 20, },
	["Teletransporte a: Ventormenta"]={ class = "MAGE", level = 20, },
	["Teletransporte a: Entrañas"]={ class = "MAGE", level = 20, },
	["Custodia de Escarcha"]={ class = "MAGE", level = 22, },
	["Chamuscar"]={ class = "MAGE", level = 22, },
	["Contrahechizo"]={ class = "MAGE", level = 24, },
	["Cono de frío"]={ class = "MAGE", level = 26, },
	["Conjurar ágata de maná"]={ class = "MAGE", level = 28, },
	["Armadura de hielo"]={ class = "MAGE", level = 30, },
	["Teletransporte a Darnassus"]={ class = "MAGE", level = 30, },
	["Teletransporte a: Cima del Trueno"]={ class = "MAGE", level = 30, },
	["Armadura de mago"]={ class = "MAGE", level = 34, },
	["Conjurar jade de maná"]={ class = "MAGE", level = 38, },
	["Portal: Forjaz"]={ class = "MAGE", level = 40, },
	["Portal: Orgrimmar"]={ class = "MAGE", level = 40, },
	["Portal: Ventormenta"]={ class = "MAGE", level = 40, },
	["Portal: Entrañas"]={ class = "MAGE", level = 40, },
	["Conjurar citrino de maná"]={ class = "MAGE", level = 48, },
	["Portal: Darnassus"]={ class = "MAGE", level = 50, },
	["Portal: Cima del Trueno"]={ class = "MAGE", level = 50, },
	["Resplandor Arcano"]={ class = "MAGE", level = 56, },
	["Conjurar rubí de maná"]={ class = "MAGE", level = 58, },
	["Polimorfia: vaca"]={ class = "MAGE", level = 60, },
	["Polimorfia"]={ class = "MAGE", level = 60, },
	["Polimorfia"]={ class = "MAGE", level = 60, },
--++ Mage Talents ++	
	["Ola de frío"]={ class = "MAGE", level = 20, },
	["Piroexplosión"]={ class = "MAGE", level = 20, },
	["Ola explosiva"]={ class = "MAGE", level = 30, },
	["Bloqueo de hielo"]={ class = "MAGE", level = 30, },
	["Presencia mental"]={ class = "MAGE", level = 30, },
	["Poder Arcano"]={ class = "MAGE", level = 40, },
	["Combustión"]={ class = "MAGE", level = 40, },
	["Barrera de hielo"]={ class = "MAGE", level = 40, },
--++ Paladin Abilities ++	
	["Luz Sagrada"]={ class = "PALADIN", level = 1, },
	["Sello de rectitud"]={ class = "PALADIN", level = 1, },
	["Sentencia"]={ class = "PALADIN", level = 4, },
	["Protección divina"]={ class = "PALADIN", level = 6, },
	["Sello del Cruzado"]={ class = "PALADIN", level = 6, },
	["Martillo de justicia"]={ class = "PALADIN", level = 8, },
	["Purificar"]={ class = "PALADIN", level = 8, },
	["Emposición"]={ class = "PALADIN", level = 10, },
	["Redención"]={ class = "PALADIN", level = 12, },
	["Furia justa"]={ class = "PALADIN", level = 16, },
	["Exorcismo"]={ class = "PALADIN", level = 20, },
	["Destello de Luz"]={ class = "PALADIN", level = 20, },
	["Captar no-muertes"]={ class = "PALADIN", level = 20, },
	["Sello de justicia"]={ class = "PALADIN", level = 22, },
	["Ahuyentar a no-muerto"]={ class = "PALADIN", level = 24, },
	["Bendición de Salvación"]={ class = "PALADIN", level = 26, },
	["Intervención divina"]={ class = "PALADIN", level = 30, },
	["Sello de luz"]={ class = "PALADIN", level = 30, },
	["Escudo divino"]={ class = "PALADIN", level = 34, },
	["Sello de sabiduría"]={ class = "PALADIN", level = 38, },
	["Bendición de la luz"]={ class = "PALADIN", level = 40, },
	["Invocar a caballo de combate"]={ class = "PALADIN", level = 40, },
	["Purgación"]={ class = "PALADIN", level = 42, },
	["Martillo de cólera"]={ class = "PALADIN", level = 44, },
	["Cólera sagrada"]={ class = "PALADIN", level = 50, },
	["Invocar a cargador"]={ class = "PALADIN", level = 60, },
--++ Paladin Talents ++	
	["Consagración"]={ class = "PALADIN", level = 20, },
	["Sello de orden"]={ class = "PALADIN", level = 20, },
	["Favor divino"]={ class = "PALADIN", level = 30, },
	["Escudo Sagrado"]={ class = "PALADIN", level = 40, },
	["Choque Sagrado"]={ class = "PALADIN", level = 40, },
	["Arrepentimiento"]={ class = "PALADIN", level = 40, },
--++ Priest Abilities ++	
	["Curación inferior"]={ class = "PRIEST", level = 1, },
	["Acometida"]={ class = "PRIEST", level = 1, },
	["Palabra de las Sombras: Dolor"]={ class = "PRIEST", level = 4, },
	["Desvanecer"]={ class = "PRIEST", level = 8, },
	["Rezo desesperado"]={ class = "PRIEST", level = 10, },
	["Maleficio de debilidad"]={ class = "PRIEST", level = 10, },
	["Explosión mental"]={ class = "PRIEST", level = 10, },
	["Resurrección"]={ class = "PRIEST", level = 10, },
	["Fragmentos estelares"]={ class = "PRIEST", level = 10, },
	["Toque de debilidad"]={ class = "PRIEST", level = 10, },
	["Fuego interno"]={ class = "PRIEST", level = 12, },
	["Alarido psíquico"]={ class = "PRIEST", level = 14, },
	["Curar"]={ class = "PRIEST", level = 16, },
	["Disipar magia"]={ class = "PRIEST", level = 18, },
	["Peste devoradora"]={ class = "PRIEST", level = 20, },
	["Gracia de Elune"]={ class = "PRIEST", level = 20, },
	["Rebote"]={ class = "PRIEST", level = 20, },
	["Destello curativo"]={ class = "PRIEST", level = 20, },
	["Fuego Sagrado"]={ class = "PRIEST", level = 20, },
	["Calma mental"]={ class = "PRIEST", level = 20, },
	["Encadenar no-muerto"]={ class = "PRIEST", level = 20, },
	["Guardia de las Sombras"]={ class = "PRIEST", level = 20, },
	["Visión mental"]={ class = "PRIEST", level = 22, },
	["Quemar maná"]={ class = "PRIEST", level = 24, },
	["Control mental"]={ class = "PRIEST", level = 30, },
	["Rezo de curación"]={ class = "PRIEST", level = 30, },
	["Suprimir enfermedad"]={ class = "PRIEST", level = 32, },
	["Levitar"]={ class = "PRIEST", level = 34, },
	["Curación superior"]={ class = "PRIEST", level = 40, },
--++ Priest Talents ++	
	["Nova Sagrada"]={ class = "PRIEST", level = 20, },
	["Enfoque interno"]={ class = "PRIEST", level = 20, },
	["Despelleje mental"]={ class = "PRIEST", level = 20, },
	["Silencio"]={ class = "PRIEST", level = 30, },
	["Pozo de Luz"]={ class = "PRIEST", level = 40, },
	["Forma de las Sombras"]={ class = "PRIEST", level = 40, },
--++ Rogue Abilities ++	
	["Eviscerar"]={ class = "ROGUE", level = 1, },
	["Ganzúa"]={ class = "ROGUE", level = 1, },
	["Golpe siniestro"]={ class = "ROGUE", level = 1, },
	["Sigilo"]={ class = "ROGUE", level = 1, },
	["Puñalada"]={ class = "ROGUE", level = 4, },
	["Robar"]={ class = "ROGUE", level = 4, },
	["Incapacitación"]={ class = "ROGUE", level = 6, },
	["Evasión"]={ class = "ROGUE", level = 8, },
	["Zapar"]={ class = "ROGUE", level = 10, },
	["Hacer picadillo"]={ class = "ROGUE", level = 10, },
	["Correr"]={ class = "ROGUE", level = 10, },
	["Patada"]={ class = "ROGUE", level = 12, },
	["Exponer armadura"]={ class = "ROGUE", level = 14, },
	["Garrote"]={ class = "ROGUE", level = 14, },
	["Amago"]={ class = "ROGUE", level = 16, },
	["Emboscada"]={ class = "ROGUE", level = 18, },
	["Venenos"]={ class = "ROGUE", level = 20, },
	["Ruptura"]={ class = "ROGUE", level = 20, },
	["Veneno paralizante"]={ class = "ROGUE", level = 20, },
	["Veneno instantáneo"]={ class = "ROGUE", level = 20, },
	["Distraer"]={ class = "ROGUE", level = 22, },
	["Esfumar"]={ class = "ROGUE", level = 22, },
	["Detectar trampas"]={ class = "ROGUE", level = 24, },
	["Veneno de aturdimiento mental"]={ class = "ROGUE", level = 24, },
	["Golpe bajo"]={ class = "ROGUE", level = 26, },
	["Desactivar trampa"]={ class = "ROGUE", level = 30, },
	["Golpe a los riñones"]={ class = "ROGUE", level = 30, },
	["Veneno mortal"]={ class = "ROGUE", level = 30, },
	["Envenenar herida"]={ class = "ROGUE", level = 32, },
	["Ceguera"]={ class = "ROGUE", level = 34, },
	["Polvo cegador"]={ class = "ROGUE", level = 34, },
	["Caída segura"]={ class = "ROGUE", level = 40, },
--++ Rogue Talents ++	
	["Golpe fantasmal"]={ class = "ROGUE", level = 20, },
	["Estocada"]={ class = "ROGUE", level = 20, },
	["Ráfaga con espada"]={ class = "ROGUE", level = 30, },
	["Sangre fría"]={ class = "ROGUE", level = 30, },
	["Hemorragia"]={ class = "ROGUE", level = 30, },
	["Preparación"]={ class = "ROGUE", level = 30, },
	["Subidón de adrenalina"]={ class = "ROGUE", level = 40, },
	["Premeditación"]={ class = "ROGUE", level = 40, },
--++ Shaman Abilities ++	
	["Onda de curación"]={ class = "SHAMAN", level = 1, },
	["Descarga de relámpagos"]={ class = "SHAMAN", level = 1, },
	["Arma comerrocas"]={ class = "SHAMAN", level = 1, },
	["Choque de tierra"]={ class = "SHAMAN", level = 4, },
	["Tótem piel de piedra"]={ class = "SHAMAN", level = 4, },
	["Tótem nexo terrestre"]={ class = "SHAMAN", level = 6, },
	["Escudo de relámpagos"]={ class = "SHAMAN", level = 8, },
	["Tótem Garra de piedra"]={ class = "SHAMAN", level = 8, },
	["Choque de llamas"]={ class = "SHAMAN", level = 10, },
	["Arma lengua de Fuego"]={ class = "SHAMAN", level = 10, },
	["Tótem abrasador"]={ class = "SHAMAN", level = 10, },
	["Fuerza de tótem de la Tierra"]={ class = "SHAMAN", level = 10, },
	["Espíritu ancestral"]={ class = "SHAMAN", level = 12, },
	["Tótem Nova de Fuego"]={ class = "SHAMAN", level = 12, },
	["Purgar"]={ class = "SHAMAN", level = 12, },
	["Tótem de tremor"]={ class = "SHAMAN", level = 18, },
	["Choque de Escarcha"]={ class = "SHAMAN", level = 20, },
	["Arma Estigma de Escarcha"]={ class = "SHAMAN", level = 20, },
	["Lobo fantasmal"]={ class = "SHAMAN", level = 20, },
	["Tótem de corriente curativa"]={ class = "SHAMAN", level = 20, },
	["Onda inferior de curación"]={ class = "SHAMAN", level = 20, },
	["Tótem de purificación de veneno"]={ class = "SHAMAN", level = 22, },
	["Tótem de resistencia a la Escarcha"]={ class = "SHAMAN", level = 24, },
	["Visión lejana"]={ class = "SHAMAN", level = 26, },
	["Tótem de magma"]={ class = "SHAMAN", level = 26, },
	["Tótem de fuente de maná"]={ class = "SHAMAN", level = 26, },
	["Tótem de Resistencia al Fuego"]={ class = "SHAMAN", level = 28, },
	["Tótem lengua de Fuego"]={ class = "SHAMAN", level = 28, },
	["Viaje astral"]={ class = "SHAMAN", level = 30, },
	["Tótem derribador"]={ class = "SHAMAN", level = 30, },
	["Tótem de resistencia a la naturaleza"]={ class = "SHAMAN", level = 30, },
	["Reencarnación"]={ class = "SHAMAN", level = 30, },
	["Arma tótem Viento Furioso"]={ class = "SHAMAN", level = 30, },
	["Cadena de relámpagos"]={ class = "SHAMAN", level = 32, },
	["Tótem Viento Furioso"]={ class = "SHAMAN", level = 32, },
	["Tótem centinela"]={ class = "SHAMAN", level = 34, },
	["Tótem muro de viento"]={ class = "SHAMAN", level = 36, },
	["Tótem purgador de enfermedades"]={ class = "SHAMAN", level = 38, },
	["Curación en cadena"]={ class = "SHAMAN", level = 40, },
	["Tótem gracia del aire"]={ class = "SHAMAN", level = 42, },
	["Tótem de aire sosegado"]={ class = "SHAMAN", level = 50, },
--++ Shaman Talents ++	
	["Parar"]={ class = "SHAMAN", level = 30, },
	["Maestría elemental"]={ class = "SHAMAN", level = 40, },
	["Tótem de marea de maná"]={ class = "SHAMAN", level = 40, },
	["Golpe de tormenta"]={ class = "SHAMAN", level = 40, },
--++ Warlock Abilities ++	
	["Piel de demonio"]={ class = "WARLOCK", level = 1, },
	["Inmolar"]={ class = "WARLOCK", level = 1, },
	["Descarga de las Sombras"]={ class = "WARLOCK", level = 1, },
	["Invocar a diablillo"]={ class = "WARLOCK", level = 1, },
	["Corrupción"]={ class = "WARLOCK", level = 4, },
	["Maldición de debilidad"]={ class = "WARLOCK", level = 4, },
	["Transfusión de vida"]={ class = "WARLOCK", level = 6, },
	["Maldición de Agonía"]={ class = "WARLOCK", level = 8, },
	["Miedo"]={ class = "WARLOCK", level = 8, },
	["Crear piedra de salud (menor)"]={ class = "WARLOCK", level = 10, },
	["Drenar alma"]={ class = "WARLOCK", level = 10, },
	["Invocar a abisario"]={ class = "WARLOCK", level = 10, },
	["Cauce de salud"]={ class = "WARLOCK", level = 12, },
	["Maldición de Temeridad"]={ class = "WARLOCK", level = 14, },
	["Drenar vida"]={ class = "WARLOCK", level = 14, },
	["Fuerza inmortal"]={ class = "WARLOCK", level = 16, },
	["Dolor abrasador"]={ class = "WARLOCK", level = 18, },
	["Crear piedra de alma (menor)"]={ class = "WARLOCK", level = 18, },
	["Armadura demoníaca"]={ class = "WARLOCK", level = 20, },
	["Lluvia de Fuego"]={ class = "WARLOCK", level = 20, },
	["Ritual de invocación"]={ class = "WARLOCK", level = 20, },
	["Invocar a súcubo"]={ class = "WARLOCK", level = 20, },
	["Crear piedra de salud (inferior)"]={ class = "WARLOCK", level = 22, },
	["Ojo de Kilrogg"]={ class = "WARLOCK", level = 22, },
	["Drenar maná"]={ class = "WARLOCK", level = 24, },
	["Captar demonios"]={ class = "WARLOCK", level = 24, },
	["Maldición de la lengua"]={ class = "WARLOCK", level = 26, },
	["Detectar invisibilidad inferior"]={ class = "WARLOCK", level = 26, },
	["Desterrar"]={ class = "WARLOCK", level = 28, },
	["Crear pirorroca (inferior)"]={ class = "WARLOCK", level = 28, },
	["Esclavizar demonio"]={ class = "WARLOCK", level = 30, },
	["Piroinferno"]={ class = "WARLOCK", level = 30, },
	["Invocar a manáfago"]={ class = "WARLOCK", level = 30, },
	["Crear piedra de alma (inferior)"]={ class = "WARLOCK", level = 30, },
	["Maldición de los Elementos"]={ class = "WARLOCK", level = 32, },
	["Custodia de las Sombras"]={ class = "WARLOCK", level = 32, },
	["Crear piedra de salud"]={ class = "WARLOCK", level = 34, },
	["Crear pirorroca"]={ class = "WARLOCK", level = 36, },
	["Crear piedra de hechizos"]={ class = "WARLOCK", level = 36, },
	["Detectar invisibilidad"]={ class = "WARLOCK", level = 38, },
	["Aullido de terror"]={ class = "WARLOCK", level = 40, },
	["Invocar a corcel nefasto"]={ class = "WARLOCK", level = 40, },
	["Crear piedra de alma"]={ class = "WARLOCK", level = 40, },
	["Espiral mortal"]={ class = "WARLOCK", level = 42, },
	["Maldición de las Sombras"]={ class = "WARLOCK", level = 44, },
	["Crear piedra de salud (superior)"]={ class = "WARLOCK", level = 46, },
	["Crear pirorroca (superior)"]={ class = "WARLOCK", level = 46, },
	["Fuego de alma"]={ class = "WARLOCK", level = 48, },
	["Crear piedra de hechizos (superior)"]={ class = "WARLOCK", level = 48, },
	["Detectar invisibilidad superior"]={ class = "WARLOCK", level = 50, },
	["Inferno"]={ class = "WARLOCK", level = 50, },
	["Crear piedra de alma (superior)"]={ class = "WARLOCK", level = 50, },
	["Crear pirorroca (sublime)"]={ class = "WARLOCK", level = 56, },
	["Crear piedra de salud (sublime)"]={ class = "WARLOCK", level = 58, },
	["Maldición del apocalipsis"]={ class = "WARLOCK", level = 60, },
	["Ritual de condena"]={ class = "WARLOCK", level = 60, },
	["Invocar a corcel de la muerte"]={ class = "WARLOCK", level = 60, },
	["Crear piedra de alma (sublime)"]={ class = "WARLOCK", level = 60, },
	["Crear piedra de hechizos (sublime)"]={ class = "WARLOCK", level = 60, },
--++ Warlock Talents ++	
	["Amplificar maldición"]={ class = "WARLOCK", level = 20, },
	["Dominio de lo maldito"]={ class = "WARLOCK", level = 20, },
	["Quemadura de las Sombras"]={ class = "WARLOCK", level = 20, },
	["Maldición de agotamiento"]={ class = "WARLOCK", level = 30, },
	["Sacrificio demoníaco"]={ class = "WARLOCK", level = 30, },
	["Succionar vida"]={ class = "WARLOCK", level = 30, },
	["Conflagrar"]={ class = "WARLOCK", level = 40, },
	["Pacto oscuro"]={ class = "WARLOCK", level = 40, },
	["Vínculo de alma"]={ class = "WARLOCK", level = 40, },
--++ Warrior Abilities ++	
	["Actitud de batalla"]={ class = "WARRIOR", level = 1, },
	["Golpe heroico"]={ class = "WARRIOR", level = 1, },
	["Zurrar mejorado"]={ class = "WARRIOR", level = 1, },
	["Embestir"]={ class = "WARRIOR", level = 4, },
	["Desgarrar"]={ class = "WARRIOR", level = 4, },
	["Trueno"]={ class = "WARRIOR", level = 6, },
	["Seccionar"]={ class = "WARRIOR", level = 8, },
	["Sanguinario"]={ class = "WARRIOR", level = 10, },
	["Actitud defensiva"]={ class = "WARRIOR", level = 10, },
	["Hender armadura"]={ class = "WARRIOR", level = 10, },
	["Irritar"]={ class = "WARRIOR", level = 10, },
	["Abrumar"]={ class = "WARRIOR", level = 12, },
	["Azote de escudo"]={ class = "WARRIOR", level = 12, },
	["Grito desmoralizador"]={ class = "WARRIOR", level = 14, },
	["Revancha"]={ class = "WARRIOR", level = 14, },
	["Falsa arremetida"]={ class = "WARRIOR", level = 16, },
	["Bloquear con escudo"]={ class = "WARRIOR", level = 16, },
	["Desactivar"]={ class = "WARRIOR", level = 18, },
	["Mellar"]={ class = "WARRIOR", level = 20, },
	["Represalias"]={ class = "WARRIOR", level = 20, },
	["Grito intimidador"]={ class = "WARRIOR", level = 22, },
	["Ejecutar"]={ class = "WARRIOR", level = 24, },
	["Grito desafiante"]={ class = "WARRIOR", level = 26, },
	["Muro de escudo"]={ class = "WARRIOR", level = 28, },
	["Actitud rabiosa"]={ class = "WARRIOR", level = 30, },
	["Interceptar"]={ class = "WARRIOR", level = 30, },
	["Embate"]={ class = "WARRIOR", level = 30, },
	["Ira rabiosa"]={ class = "WARRIOR", level = 32, },
	["Huracán"]={ class = "WARRIOR", level = 36, },
	["Zurrar"]={ class = "WARRIOR", level = 38, },
	["Temeridad"]={ class = "WARRIOR", level = 50, },
--++ Warrior Talents ++	
	["Cólera desbocada"]={ class = "WARRIOR", level = 15, },
	["Manía sangrienta"]={ class = "WARRIOR", level = 20, },
	["Última posición"]={ class = "WARRIOR", level = 20, },
	["Aullido penetrante"]={ class = "WARRIOR", level = 20, },
	["Golpe de concusión"]={ class = "WARRIOR", level = 30, },
	["Deseo de la Muerte"]={ class = "WARRIOR", level = 30, },
	["Golpes de barrido"]={ class = "WARRIOR", level = 30, },
	["Sed de sangre"]={ class = "WARRIOR", level = 40, },
	["Golpe mortal"]={ class = "WARRIOR", level = 40, },
	["Embate con escudo"]={ class = "WARRIOR", level = 40, },
};

Spy_IgnoreList = {

};