local addonName, addon = ...

addon.Enums = {}
addon.Strings = {}

addon.Enums.Professions = {}
addon.Enums.Professions.Alchemy = 1
addon.Enums.Professions.Blacksmithing = 2
addon.Enums.Professions.Cooking = 3
addon.Enums.Professions.Enchanting = 4
addon.Enums.Professions.Engineering = 5
addon.Enums.Professions.Leatherworking = 6
addon.Enums.Professions.Mining = 7
addon.Enums.Professions.Tailoring = 8

addon.Enums.Reacts = {}
addon.Enums.Reacts.Horde = 1
addon.Enums.Reacts.Ally = 2

addon.Enums.Restrictions = {}
addon.Enums.Restrictions.SoD = 1

addon.Strings.Professions = {}
addon.Strings.Professions.Alchemy = GetSpellInfo(2259)
addon.Strings.Professions.Blacksmithing = GetSpellInfo(2018)
addon.Strings.Professions.Cooking = GetSpellInfo(2550)
addon.Strings.Professions.Enchanting = GetSpellInfo(7411)
addon.Strings.Professions.Engineering = GetSpellInfo(4036)
addon.Strings.Professions.Leatherworking = GetSpellInfo(2108)
addon.Strings.Professions.Mining = GetSpellInfo(2575)
addon.Strings.Professions.Tailoring = GetSpellInfo(3909)

addon.Enums.Sources = {}
addon.Enums.Sources.Trainer = 1
addon.Enums.Sources.Item = 2
addon.Enums.Sources.Unknown = 3
addon.Enums.Sources.Recipe = 4
addon.Enums.Sources.Vendors = 5
addon.Enums.Sources.WorldDrop = 6
addon.Enums.Sources.Quest = 7
addon.Enums.Sources.ZoneDrop = 8
addon.Enums.Sources.Drop = 9

addon.Strings.Sources = {}
addon.Strings.Sources.Trainer = TUTORIAL_TITLE14
addon.Strings.Sources.Item = HELPFRAME_ITEM_TITLE
addon.Strings.Sources.Unknown = QUEUED_STATUS_UNKNOWN
addon.Strings.Sources.Recipe = AUCTION_CATEGORY_RECIPES
addon.Strings.Sources.Vendors = TUTORIAL_TITLE20
addon.Strings.Sources.WorldDrop = TRANSMOG_SOURCE_4
addon.Strings.Sources.Quest = LOOT_JOURNAL_LEGENDARIES_SOURCE_QUEST
addon.Strings.Sources.ZoneDrop = ZONE
addon.Strings.Sources.Drop = BATTLE_PET_SOURCE_1

addon.db = {}
