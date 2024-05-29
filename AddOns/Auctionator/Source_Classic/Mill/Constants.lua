local MILL_ITEMS = {
  -- Vanilla herbs
  PEACEBLOOM = "2447",
  SILVERLEAF = "765",
  EARTHROOT = "2449",
  MAGEROYAL = "785",
  BRIARTHORN = "2450",
  SWIFTTHISTLE = "2452",
  STRANGLEKELP = "3820",
  BRUISEWEED = "2453",
  WILD_STEELBLOOM = "3355",
  GRAVE_MOSS = "3369",
  KINGSBLOOD = "3356",
  LIFEROOT = "3357",
  FADELEAF = "3818",
  GOLDTHORN = "3821",
  KHADGARS_WHISKER = "3358",
  WINTERSBITE = "3819", -- Renamed Dragon's Teeth in retail.
  FIREBLOOM = "4625",
  PURPLE_LOTUS = "8831",
  ARTHAS_TEARS = "8836",
  SUNGRASS = "8838",
  BLINDWEED = "8839",
  GHOST_MUSHROOM = "8845",
  GROMSBLOOD = "8846",
  GOLDEN_SANSAM = "13464",
  DREAMFOIL = "13463",
  MOUNTAIN_SILVERSAGE = "13465",
  PLAGUEBLOOM = "13466", -- Renamed Sorrowmoss in retail.
  ICECAP = "13467",

  -- TBC herbs
  FELWEED = "22785",
  DREAMING_GLORY = "22786",
  RAGVEIL = "22787",
  TEROCONE = "22789",
  ANCIENT_LICHEN = "22790",
  NETHERBLOOM = "22791",
  NIGHTMARE_VINE = "22792",
  MANA_THISTLE = "22793",

  -- WOTLK herbs
  GOLDCLOVER = "36901",
  DEADNETTLE = "37921",
  FIRE_LEAF = "39970",
  TIGER_LILY = "36904",
  TALANDRAS_ROSE = "36907",
  ADDERS_TONGUE = "36903",
  LICHBLOOM = "36905",
  ICETHORN = "36906",

  --Cata herbs
  AZSHARAS_VEIL = "52985",
  CINDERBLOOM = "52983",
  STORMVINE = "52984",
  HEARTBLOSSOM = "52986",
  WHIPTAIL = "52988",
  TWILIGHT_JASMINE = "52987",

  -- Pigments
  ALABASTER_PIGMENT = "39151",
  DUSKY_PIGMENT = "39334",
  VERDANT_PIGMENT = "43103",
  GOLDEN_PIGMENT = "39338",
  BURNT_PIGMENT = "43104",
  EMERALD_PIGMENT = "39339",
  INDIGO_PIGMENT = "43105",
  VIOLET_PIGMENT = "39340",
  RUBY_PIGMENT = "43106",
  SILVERY_PIGMENT = "39341",
  SAPPHIRE_PIGMENT = "43107",
  NETHER_PIGMENT = "39342",
  EBON_PIGMENT = "43108",
  AZURE_PIGMENT = "39343",
  ICY_PIGMENT = "43109",
  ASHEN_PIGMENT = "61979",
  BURNING_EMBERS = "61980",
}

-- Common pigments come in 2/3/4 count unless noted otherwise.
-- Uncommon pigments all come in a 1/2/3 count.
Auctionator.Mill.MILL_TABLE = {
  -- VANILLA TIER 1
  -- Only common pigments from these.
  [MILL_ITEMS.PEACEBLOOM] = {
      [MILL_ITEMS.ALABASTER_PIGMENT] = {0, 0.5, 0.5, 0.0016},
  },
  [MILL_ITEMS.SILVERLEAF] = {
      [MILL_ITEMS.ALABASTER_PIGMENT] = {0, 0.5, 0.5, 0.0016},
  },
  [MILL_ITEMS.EARTHROOT] = {
      [MILL_ITEMS.ALABASTER_PIGMENT] = {0, 0.33, 0.34, 0.33},
  },

  -- VANILLA TIER 2
  [MILL_ITEMS.MAGEROYAL] = {
      [MILL_ITEMS.DUSKY_PIGMENT] = {0, 0.5, 0.49, 0.0007},
      [MILL_ITEMS.VERDANT_PIGMENT] = {0.24, 0.007, 0.006},
  },
  [MILL_ITEMS.BRIARTHORN] = {
      [MILL_ITEMS.DUSKY_PIGMENT] = {0, 0.5, 0.5, 0.001},
      [MILL_ITEMS.VERDANT_PIGMENT] = {0.24, 0.006, 0.006},
  },
  [MILL_ITEMS.SWIFTTHISTLE] = {
      [MILL_ITEMS.DUSKY_PIGMENT] = {0, 0.5, 0.5, 0.0012},
      [MILL_ITEMS.VERDANT_PIGMENT] = {0.23, 0.006, 0.006},
  },
  [MILL_ITEMS.STRANGLEKELP] = {
      [MILL_ITEMS.DUSKY_PIGMENT] = {0, 0.33, 0.33, 0.33},
      [MILL_ITEMS.VERDANT_PIGMENT] = {0.47, 0.012, 0.012},
  },
  [MILL_ITEMS.BRUISEWEED] = {
      [MILL_ITEMS.DUSKY_PIGMENT] = {0, 0.33, 0.34, 0.33},
      [MILL_ITEMS.VERDANT_PIGMENT] = {0.47, 0.013, 0.011},
  },

  -- VANILLA TIER 3
  [MILL_ITEMS.WILD_STEELBLOOM] = {
      [MILL_ITEMS.GOLDEN_PIGMENT] = {0, 0.5, 0.5, 0.0014},
      [MILL_ITEMS.BURNT_PIGMENT] = {0.23, 0.006, 0.006},
  },
  [MILL_ITEMS.GRAVE_MOSS] = {
      [MILL_ITEMS.GOLDEN_PIGMENT] = {0, 0.49, 0.5, 0.0013},
      [MILL_ITEMS.BURNT_PIGMENT] = {0.24, 0.009, 0.007},
  },
  [MILL_ITEMS.KINGSBLOOD] = {
      [MILL_ITEMS.GOLDEN_PIGMENT] = {0, 0.33, 0.34, 0.33},
      [MILL_ITEMS.BURNT_PIGMENT] = {0.47, 0.013, 0.012},
  },
  [MILL_ITEMS.LIFEROOT] = {
      [MILL_ITEMS.GOLDEN_PIGMENT] = {0, 0.33, 0.33, 0.33},
      [MILL_ITEMS.BURNT_PIGMENT] = {0.47, 0.013, 0.013},
  },

  -- VANILLA TIER 4
  [MILL_ITEMS.FADELEAF] = {
      [MILL_ITEMS.EMERALD_PIGMENT] = {0, 0.5, 0.49}, -- 2/3 count.
      [MILL_ITEMS.INDIGO_PIGMENT] = {0.23, 0.006, 0.006},
  },
  [MILL_ITEMS.GOLDTHORN] = {
      [MILL_ITEMS.EMERALD_PIGMENT] = {0, 0.5, 0.49}, -- 2/3 count.
      [MILL_ITEMS.INDIGO_PIGMENT] = {0.24, 0.006, 0.007},
  },
  [MILL_ITEMS.KHADGARS_WHISKER] = {
      [MILL_ITEMS.EMERALD_PIGMENT] = {0, 0.0013, 0.49, 0.5},
      [MILL_ITEMS.INDIGO_PIGMENT] = {0.47, 0.012, 0.012},
  },
  [MILL_ITEMS.WINTERSBITE] = { -- Renamed Dragon's Teeth in retail. Percentages used from item id 3819.
      [MILL_ITEMS.EMERALD_PIGMENT] = {0, 0.002, 0.5, 0.49},
      [MILL_ITEMS.INDIGO_PIGMENT] = {0.46, 0.013, 0.012},
  },

  -- VANILLA TIER 5
  [MILL_ITEMS.FIREBLOOM] = {
      [MILL_ITEMS.VIOLET_PIGMENT] = {0, 0.49, 0.5, 0.0008},
      [MILL_ITEMS.RUBY_PIGMENT] = {0.24, 0.006, 0.007},
  },
  [MILL_ITEMS.PURPLE_LOTUS] = {
      [MILL_ITEMS.VIOLET_PIGMENT] = {0, 0.49, 0.5, 0.002},
      [MILL_ITEMS.RUBY_PIGMENT] = {0.23, 0.007, 0.006},
  },
  [MILL_ITEMS.ARTHAS_TEARS] = {
      [MILL_ITEMS.VIOLET_PIGMENT] = {0, 0.47, 0.49, 0.0005},
      [MILL_ITEMS.RUBY_PIGMENT] = {0.23, 0.006, 0.003},
  },
  [MILL_ITEMS.SUNGRASS] = {
      [MILL_ITEMS.VIOLET_PIGMENT] = {0, 0.5, 0.5, 0.0008},
      [MILL_ITEMS.RUBY_PIGMENT] = {0.24, 0.006, 0.006},
  },
  [MILL_ITEMS.BLINDWEED] = {
      [MILL_ITEMS.VIOLET_PIGMENT] = {0, 0.33, 0.33, 0.33},
      [MILL_ITEMS.RUBY_PIGMENT] = {0.46, 0.014, 0.011},
  },
  [MILL_ITEMS.GHOST_MUSHROOM] = {
      [MILL_ITEMS.VIOLET_PIGMENT] = {0, 0.32, 0.35, 0.32},
      [MILL_ITEMS.RUBY_PIGMENT] = {0.46, 0.02, 0.011},
  },
  [MILL_ITEMS.GROMSBLOOD] = {
      [MILL_ITEMS.VIOLET_PIGMENT] = {0, 0.33, 0.33, 0.33},
      [MILL_ITEMS.RUBY_PIGMENT] = {0.47, 0.013, 0.012},
  },

  -- VANILLA TIER 6
  [MILL_ITEMS.GOLDEN_SANSAM] = {
      [MILL_ITEMS.SILVERY_PIGMENT] = {0, 0.49, 0.4, 0.0008},
      [MILL_ITEMS.SAPPHIRE_PIGMENT] = {0.23, 0.006, 0.006},
  },
  [MILL_ITEMS.DREAMFOIL] = {
      [MILL_ITEMS.SILVERY_PIGMENT] = {0, 0.49, 0.5, 0.0009},
      [MILL_ITEMS.SAPPHIRE_PIGMENT] = {0.23, 0.006, 0.007},
  },
  [MILL_ITEMS.MOUNTAIN_SILVERSAGE] = {
      [MILL_ITEMS.SILVERY_PIGMENT] = {0, 0.32, 0.33, 0.34},
      [MILL_ITEMS.SAPPHIRE_PIGMENT] = {0.47, 0.013, 0.012},
  },
  [MILL_ITEMS.PLAGUEBLOOM] = { -- Renamed Sorrowmoss in retail. Percentages used from item id 13466.
      [MILL_ITEMS.SILVERY_PIGMENT] = {0, 0.33, 0.33, 0.33},
      [MILL_ITEMS.SAPPHIRE_PIGMENT] = {0.47, 0.012, 0.012},
  },
  [MILL_ITEMS.ICECAP] = {
      [MILL_ITEMS.SILVERY_PIGMENT] = {0, 0.33, 0.33, 0.33},
      [MILL_ITEMS.SAPPHIRE_PIGMENT] = {0.47, 0.012, 0.012},
  },

  -- TBC
  [MILL_ITEMS.FELWEED] = {
      [MILL_ITEMS.NETHER_PIGMENT] = {0, 0.5, 0.5, 0.0007},
      [MILL_ITEMS.EBON_PIGMENT] = {0.23, 0.006, 0.006},
  },
  [MILL_ITEMS.DREAMING_GLORY] = {
      [MILL_ITEMS.NETHER_PIGMENT] = {0, 0.5, 0.5, 0.0009},
      [MILL_ITEMS.EBON_PIGMENT] = {0.23, 0.006, 0.006},
  },
  [MILL_ITEMS.RAGVEIL] = {
      [MILL_ITEMS.NETHER_PIGMENT] = {0, 0.49, 0.5, 0.0007},
      [MILL_ITEMS.EBON_PIGMENT] = {0.24, 0.006, 0.007},
  },
  [MILL_ITEMS.TEROCONE] = {
      [MILL_ITEMS.NETHER_PIGMENT] = {0, 0.5, 0.49, 0.0011},
      [MILL_ITEMS.EBON_PIGMENT] = {0.23, 0.007, 0.006},
  },
  [MILL_ITEMS.ANCIENT_LICHEN] = {
      [MILL_ITEMS.NETHER_PIGMENT] = {0, 0.33, 0.33, 0.33},
      [MILL_ITEMS.EBON_PIGMENT] = {0.46, 0.012, 0.013},
  },
  [MILL_ITEMS.NETHERBLOOM] = {
      [MILL_ITEMS.NETHER_PIGMENT] = {0, 0.33, 0.34, 0.33},
      [MILL_ITEMS.EBON_PIGMENT] = {0.48, 0.011, 0.015},
  },
  [MILL_ITEMS.NIGHTMARE_VINE] = {
      [MILL_ITEMS.NETHER_PIGMENT] = {0, 0.34, 0.33, 0.33},
      [MILL_ITEMS.EBON_PIGMENT] = {0.49, 0.013, 0.012},
  },
  [MILL_ITEMS.MANA_THISTLE] = {
      [MILL_ITEMS.NETHER_PIGMENT] = {0, 0.32, 0.33, 0.34},
      [MILL_ITEMS.EBON_PIGMENT] = {0.45, 0.013, 0.014},
  },

  -- WOTLK
  [MILL_ITEMS.GOLDCLOVER] = {
      [MILL_ITEMS.AZURE_PIGMENT] = {0, 0.5, 0.5, 0.0004},
      [MILL_ITEMS.ICY_PIGMENT] = {0.23, 0.006, 0.006},
  },
  [MILL_ITEMS.DEADNETTLE] = {
      [MILL_ITEMS.AZURE_PIGMENT] = {0, 0.5, 0.5, 0.004},
      [MILL_ITEMS.ICY_PIGMENT] = {0.24, 0.007, 0.006},
  },
  [MILL_ITEMS.FIRE_LEAF] = {
      [MILL_ITEMS.AZURE_PIGMENT] = {0, 0.5, 0.5, 0.006},
      [MILL_ITEMS.ICY_PIGMENT] = {0.23, 0.007, 0.007},
  },
  [MILL_ITEMS.TIGER_LILY] = {
      [MILL_ITEMS.AZURE_PIGMENT] = {0, 0.5, 0.5, 0.0003},
      [MILL_ITEMS.ICY_PIGMENT] = {0.23, 0.006, 0.006},
  },
  [MILL_ITEMS.TALANDRAS_ROSE] = {
      [MILL_ITEMS.AZURE_PIGMENT] = {0, 0.49, 0.5, 0.0006},
      [MILL_ITEMS.ICY_PIGMENT] = {0.24, 0.006, 0.006},
  },
  [MILL_ITEMS.ADDERS_TONGUE] = {
      [MILL_ITEMS.AZURE_PIGMENT] = {0, 0.33, 0.33, 0.33},
      [MILL_ITEMS.ICY_PIGMENT] = {0.47, 0.012, 0.013},
  },
  [MILL_ITEMS.LICHBLOOM] = {
      [MILL_ITEMS.AZURE_PIGMENT] = {0, 0.33, 0.34, 0.33},
      [MILL_ITEMS.ICY_PIGMENT] = {0.47, 0.012, 0.012},
  },
  [MILL_ITEMS.ICETHORN] = {
      [MILL_ITEMS.AZURE_PIGMENT] = {0, 0.34, 0.33, 0.33},
      [MILL_ITEMS.ICY_PIGMENT] = {0.47, 0.012, 0.013},
  },
  -- Cata
  [MILL_ITEMS.AZSHARAS_VEIL] = {
      [MILL_ITEMS.ASHEN_PIGMENT] = {0, 0.5, 0.5, 0.0001},
      [MILL_ITEMS.BURNING_EMBERS] = {0.23, 0.006, 0.006},
  },
  [MILL_ITEMS.CINDERBLOOM] = {
      [MILL_ITEMS.ASHEN_PIGMENT] = {0, 0.5, 0.5, 0.0001},
      [MILL_ITEMS.BURNING_EMBERS] = {0.23, 0.006, 0.006},
  },
  [MILL_ITEMS.STORMVINE] = {
      [MILL_ITEMS.ASHEN_PIGMENT] = {0, 0.5, 0.5, 0.0001},
      [MILL_ITEMS.BURNING_EMBERS] = {0.23, 0.006, 0.006},
  },
  [MILL_ITEMS.HEARTBLOSSOM] = {
      [MILL_ITEMS.ASHEN_PIGMENT] = {0, 0.5, 0.5, 0.0002},
      [MILL_ITEMS.BURNING_EMBERS] = {0.24, 0.006, 0.006},
  },
  [MILL_ITEMS.WHIPTAIL] = {
      [MILL_ITEMS.ASHEN_PIGMENT] = {0, 0.33, 0.33, 0.33},
      [MILL_ITEMS.BURNING_EMBERS] = {0.47, 0.012, 0.012},
  },
  [MILL_ITEMS.TWILIGHT_JASMINE] = {
      [MILL_ITEMS.ASHEN_PIGMENT] = {0, 0.33, 0.34, 0.33},
      [MILL_ITEMS.BURNING_EMBERS] = {0.47, 0.012, 0.012},
  },
}
