--[[
BetterBags_Archaeology - Adds Archaeology items to BetterBags virtual groups
Copyright © 2024 Paul Vandersypen, All Rights Reserved
]]--

assert(LibStub("AceAddon-3.0"):GetAddon("BetterBags"), "BetterBags_Archaeology requires BetterBags")

---@type string, table
local _, addon = ...

-- need to check game version
local isMainline = WOW_PROJECT_ID == WOW_PROJECT_MAINLINE

local database = {}

database[52843]     = true      -- Dwarf Rune Stone (key stone)
database[63127]     = true      -- Highborne Scroll (key stone)
database[63128]     = true      -- Troll Tablet (key stone)
database[64392]     = true      -- Orc Blood Text (key stone)
database[64394]     = true      -- Draenei Tome (key stone)
database[64395]     = true      -- Vrykul Rune Stick (key stone)
database[64396]     = true      -- Nerubian Obelisk (key stone)
database[64397]     = true      -- Tol'vir Hieroglyphic (key stone)
database[64657]     = true      -- Canopic Jar

if isMainline then
    database[79868]     = true      -- Pandaren Pottery Shard (key stone)
    database[79869]     = true      -- Mogu Statue Piece (key stone)
    database[79896]     = true      -- Pandaren Tea Set
    database[79897]     = true      -- Pandaren Game Board
    database[79898]     = true      -- Twin Stein Set
    database[79899]     = true      -- Walking Cane
    database[79900]     = true      -- Empty Keg
    database[79901]     = true      -- Carved Bronze Mirror
    database[79902]     = true      -- Gold-Inlaid Figurine
    database[79903]     = true      -- Apothecary Tins
    database[79904]     = true      -- Pearl of Yu'lon
    database[79905]     = true      -- Standard of Niuzao
    database[79908]     = true      -- Manacles of Rebellion
    database[79909]     = true      -- Cracked Mogu Runestone
    database[79910]     = true      -- Terracotta Arm
    database[79911]     = true      -- Petrified Bone Whip
    database[79912]     = true      -- Thunder King Insignia
    database[79913]     = true      -- Edicts of the Thunder King
    database[79914]     = true      -- Iron Amulet
    database[79915]     = true      -- Warlord's Branding Iron
    database[79916]     = true      -- Mogu Coin
    database[79917]     = true      -- Worn Monument Ledger
    database[87399]     = true      -- Restored Artifact
    database[87533]     = true      -- Crate of Dwarf Archaeology Fragments
    database[87534]     = true      -- Crate of Draenei Archaeology Fragments
    database[87535]     = true      -- Crate of Fossil Archaeology Fragments
    database[87536]     = true      -- Crate of Night Elf Archaeology Fragments
    database[87537]     = true      -- Crate of Nerubian Archaeology Fragments
    database[87538]     = true      -- Crate of Orc Archaeology Fragments
    database[87539]     = true      -- Crate of Tol'vir Archaeology Fragments
    database[87540]     = true      -- Crate of Troll Archaeology Fragments
    database[87541]     = true      -- Crate of Vrykul Archaeology Fragments
    database[87548]     = true      -- Lorewalker's Lodestone
    database[87549]     = true      -- Lorewalker's Map
    database[89169]     = true      -- Pristine Manacles of Rebellion
    database[89170]     = true      -- Pristine Mogu Runestone
    database[89171]     = true      -- Pristine Terracotta Arm
    database[89172]     = true      -- Pristine Petrified Bone Whip
    database[89173]     = true      -- Pristine Thunder King Insignia
    database[89174]     = true      -- Pristine Edicts of the Thunder King
    database[89175]     = true      -- Pristine Iron Amulet
    database[89176]     = true      -- Pristine Branding Iron
    database[95373]     = true      -- Mantid Amber Sliver (key stone)
    database[95375]     = true      -- Banner of the Mantid Empire
    database[95376]     = true      -- Ancient Sap Feeder
    database[95377]     = true      -- The Praying Mantid
    database[95378]     = true      -- Inert Sound Beacon
    database[95379]     = true      -- Remains of a Paragon
    database[95380]     = true      -- Mantid Lamp
    database[95381]     = true      -- Pollen Collector
    database[95382]     = true      -- Kypari Sap Container
    database[95383]     = true      -- Pristine Banner of the Mantid Empire
    database[95384]     = true      -- Pristine Ancient Sap Feeder
    database[95385]     = true      -- Pristine Praying Mantid
    database[95386]     = true      -- Pristine Sound Beacon
    database[95387]     = true      -- Pristine Remains of a Paragon
    database[95388]     = true      -- Pristine Mantid Lamp
    database[95389]     = true      -- Pristine Pollen Collector
    database[95390]     = true      -- Pristine Kypari Sap Container
    database[104198]    = true      -- Mantid Artifact Hunter's Kit
    database[108439]    = true      -- Draenor Clan Orator Cane (key stone)
    database[109584]    = true      -- Ogre Missive (key stone)
    database[109585]    = true      -- Arakkoa Cipher (key stone)
    database[109586]    = true      -- Brittle Cartography Journal (WoD)
    database[114141]    = true      -- Fang-Scarred Frostwolf Axe
    database[114142]    = true      -- Pristine Fang-Scarred Frostwolf Axe
    database[114143]    = true      -- Frostwolf Ancestry Scrimshaw
    database[114144]    = true      -- Pristine Frostwolf Ancestry Scrimshaw
    database[114145]    = true      -- Wolfskin Snowshoes
    database[114146]    = true      -- Pristine Wolfskin Snowshoes
    database[114147]    = true      -- Warsinger's Drums
    database[114148]    = true      -- Pristine Warsinger's Drums
    database[114149]    = true      -- Screaming Bullroarer
    database[114150]    = true      -- Pristine Screaming Bullroarer
    database[114151]    = true      -- Warsong Ceremonial Pike
    database[114152]    = true      -- Pristine Warsong Ceremonial Pike
    database[114153]    = true      -- Metalworker's Hammer
    database[114154]    = true      -- Pristine Metalworker's Hammer
    database[114155]    = true      -- Elemental Bellows
    database[114156]    = true      -- Pristine Elemental Bellows
    database[114157]    = true      -- Blackrock Razor
    database[114158]    = true      -- Pristine Blackrock Razor
    database[114159]    = true      -- Weighted Chopping Axe
    database[114160]    = true      -- Pristine Weighted Chopping Axe
    database[114161]    = true      -- Hooked Dagger
    database[114162]    = true      -- Pristine Hooked Dagger
    database[114163]    = true      -- Barbed Fishing Hook
    database[114164]    = true      -- Pristine Barbed Fishing Hook
    database[114165]    = true      -- Calcified Eye In a Jar
    database[114166]    = true      -- Pristine Calcified Eye In a Jar
    database[114167]    = true      -- Ceremonial Tattoo Needles
    database[114168]    = true      -- Pristine Ceremonial Tattoo Needles
    database[114169]    = true      -- Cracked Ivory Idol
    database[114170]    = true      -- Pristine Cracked Ivory Idol
    database[114171]    = true      -- Ancestral Talisman
    database[114172]    = true      -- Pristine Ancestral Talisman
    database[114173]    = true      -- Flask of Blazegrease
    database[114174]    = true      -- Pristine Flask of Blazegrease
    database[114175]    = true      -- Gronn-Tooth Necklace
    database[114176]    = true      -- Pristine Gronn-Tooth Necklace
    database[114177]    = true      -- Doomsday Prophecy
    database[114178]    = true      -- Pristine Doomsday Prophecy
    database[114179]    = true      -- Headdress of the First Shaman
    database[114180]    = true      -- Pristine Headdress of the First Shaman
    database[114181]    = true      -- Stonemaul Succession Stone
    database[114182]    = true      -- Pristine Stonemaul Succession Stone
    database[114183]    = true      -- Stone Manacles
    database[114184]    = true      -- Pristine Stone Manacles
    database[114185]    = true      -- Ogre Figurine
    database[114186]    = true      -- Pristine Ogre Figurine
    database[114187]    = true      -- Pictogram Carving
    database[114188]    = true      -- Pristine Pictogram Carving
    database[114189]    = true      -- Gladiator's Shield
    database[114190]    = true      -- Mortar and Pestle
    database[114191]    = true      -- Eye of Har'gunn the Blind
    database[114192]    = true      -- Stone Dentures
    database[114193]    = true      -- Rylak Riding Harness
    database[114194]    = true      -- Imperial Decree Stele
    database[114195]    = true      -- Sorcerer-King Toe Ring
    database[114196]    = true      -- Warmaul of the Warmaul Chieftain
    database[114197]    = true      -- Dreamcatcher
    database[114198]    = true      -- Burial Urn
    database[114199]    = true      -- Decree Scrolls
    database[114200]    = true      -- Solar Orb
    database[114201]    = true      -- Sundial
    database[114202]    = true      -- Talonpriest Mask
    database[114203]    = true      -- Outcast Dreamcatcher
    database[114204]    = true      -- Apexis Crystal
    database[114205]    = true      -- Apexis Hieroglyph
    database[114206]    = true      -- Apexis Scroll
    database[114207]    = true      -- Beakbreaker of Terokk
    database[114208]    = true      -- Pristine Gladiator's Shield
    database[114209]    = true      -- Pristine Mortar and Pestle
    database[114210]    = true      -- Pristine Eye of Har'gunn the Blind
    database[114211]    = true      -- Pristine Stone Dentures
    database[114212]    = true      -- Pristine Rylak Riding Harness
    database[114213]    = true      -- Pristine Imperial Decree Stele
    database[114214]    = true      -- Pristine Sorcerer-King Toe Ring
    database[114215]    = true      -- Pristine Dreamcatcher
    database[114216]    = true      -- Pristine Burial Urn
    database[114217]    = true      -- Pristine Decree Scrolls
    database[114218]    = true      -- Pristine Solar Orb
    database[114219]    = true      -- Pristine Sundial
    database[114220]    = true      -- Pristine Talonpriest Mask
    database[114221]    = true      -- Pristine Outcast Dreamcatcher
    database[114222]    = true      -- Pristine Apexis Crystal
    database[114223]    = true      -- Pristine Apexis Hieroglyph
    database[114224]    = true      -- Pristine Apexis Scroll
    database[117386]    = true      -- Crate of Pandaren Archaeology Fragments
    database[117387]    = true      -- Crate of Mogu Archaeology Fragments
    database[117388]    = true      -- Crate of Mantid Archaeology Fragments
    database[117389]    = true      -- Draenor Achaeologist's Lodestone
    database[117390]    = true      -- Draenor Archaeologist's Map
    database[118728]    = true      -- Shadowmoon Valley Treasure Map
    database[118729]    = true      -- Gorgrond Treasure Map
    database[118730]    = true      -- Talador Treasure Map
    database[118731]    = true      -- Spires of Arak Treasure Map
    database[118732]    = true      -- Nagrand Treasure Map
    database[122606]    = true      -- Explorer's Notebook
    database[130903]    = true      -- Ancient Suramar Scroll (key stone)
    database[130904]    = true      -- Highmountain Ritual-Stone (key stone)
    database[130905]    = true      -- Mark of the Deceiver (key stone)
    database[130906]    = true      -- Violetglass Vessel
    database[130907]    = true      -- Inert Leystone Charm
    database[130908]    = true      -- Quietwine Vial
    database[130909]    = true      -- Pre-War Highborne Tapestry
    database[130910]    = true      -- Nobleman's Letter Opener
    database[130911]    = true      -- Trailhead Drum
    database[130912]    = true      -- Moosebone Fish-Hook
    database[130913]    = true      -- Hand-Smoothed Pyrestone
    database[130914]    = true      -- Drogbar Gem-Roller
    database[130915]    = true      -- Stonewood Bow
    database[130916]    = true      -- Imp's Cup
    database[130917]    = true      -- Flayed-Skin Chronicle
    database[130918]    = true      -- Malformed Abyssal
    database[130919]    = true      -- Orb of Inner Chaos
    database[130920]    = true      -- Houndstooth Hauberk
    database[130921]    = true      -- Pristine Violetglass Vessel
    database[130922]    = true      -- Pristine Inert Leystone Charm
    database[130923]    = true      -- Pristine Quietwine Vial
    database[130924]    = true      -- Pristine Pre-War Highborne Tapestry
    database[130925]    = true      -- Pristine Nobleman's Letter Opener
    database[130926]    = true      -- Pristine Trailhead Drum
    database[130927]    = true      -- Pristine Moosebone Fish-Hook
    database[130928]    = true      -- Pristine Hand-Smoothed Pyrestone
    database[130929]    = true      -- Pristine Drogbar Gem-Roller
    database[130930]    = true      -- Pristine Stonewood Bow
    database[130931]    = true      -- Pristine Imp's Cup
    database[130932]    = true      -- Pristine Flayed-Skin Chronicle
    database[130933]    = true      -- Pristine Malformed Abyssal
    database[130934]    = true      -- Pristine Orb of Inner Chaos
    database[130935]    = true      -- Pristine Houndstooth Hauberk
    database[134086]    = true      -- Surveying Equipment
    database[135488]    = true      -- Goblin Explosives
    database[136372]    = true      -- Archaeologist's Whistle
    database[136632]    = true      -- Ancient War Remnants
    database[136383]    = true      -- Ravencrest Cache
    database[136419]    = true      -- Excavator's Notebook (Legion)
    database[142113]    = true      -- Crate of Arakkoa Archaeology Fragments
    database[142114]    = true      -- Crate of Draenor Clans Archaeology Fragments
    database[142115]    = true      -- Crate of Ogre Archaeology Fragments
    database[154913]    = true      -- Akun'Jar Vase
    database[154914]    = true      -- Urn of Passage
    database[154915]    = true      -- Rezan Idol
    database[154916]    = true      -- High Apothecary's Hood
    database[154917]    = true      -- Bwonsamdi Voodoo Mask
    database[154921]    = true      -- Ceremonial Bonesaw
    database[154922]    = true      -- Ancient Runebound Tome
    database[154923]    = true      -- Disembowling Sickle
    database[154924]    = true      -- Jagged Blade of the Drust
    database[154925]    = true      -- Ritual Fetish
    database[154926]    = true      -- Pristine Ceremonial Bonesaw
    database[154927]    = true      -- Pristine Ancient Runebound Tome
    database[154928]    = true      -- Pristine Disembowling Sickle
    database[154929]    = true      -- Pristine Jagged Blade of the Drust
    database[154930]    = true      -- Pristine Ritual Fetish
    database[154931]    = true      -- Pristine Akun'Jar Vase
    database[154932]    = true      -- Pristine Urn of Passage
    database[154933]    = true      -- Pristine Rezan Idol
    database[154934]    = true      -- Pristine High Apothecary's Hood
    database[154935]    = true      -- Pristine Bwonsamdi Voodoo Mask
    database[154989]    = true      -- Zandalari Idol (key stone)
    database[154990]    = true      -- Etched Drust Bone (key stone)
    database[160741]    = true      -- Soul Coffer
    database[160742]    = true      -- Pristine Soul Coffer
    database[160743]    = true      -- Blowgun of the Sethra
    database[160744]    = true      -- Pristine Blowgun of the Sethrak
    database[164625]    = true      -- Crate of Demon Archaeology Fragments
    database[164626]    = true      -- Crate of Highborne Archaeology Fragments
    database[164627]    = true      -- Crate of Highmountain Tauren Archaeology Fragments
    database[183384]    = true      -- Crate of Drust Archaeology Fragments
    database[183385]    = true      -- Crate of Zandalari Archaeology Fragments
end

-- return data to main file
addon.db = database