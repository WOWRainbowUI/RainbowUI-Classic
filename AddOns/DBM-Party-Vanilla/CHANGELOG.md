# DBM - Dungeons

## [r125](https://github.com/DeadlyBossMods/DBM-Dungeons/tree/r125) (2024-04-29)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Dungeons/compare/r124...r125) [Previous Releases](https://github.com/DeadlyBossMods/DBM-Dungeons/releases)

- cancel cloudburst timer on Kyrakka death. the CD now resets on stage 2 (it carried over in season 1)  
- Push the final boss mod for the alpha stage 2 dungeons  
- Update all icon objects to use modern typing  
    Updated first 3 bosses of The Stonevault (4th and last boss soon)  
- Update localization.ru.lua (#190)  
- change alert for necrotic breath since it's no longer interruptable  
- Update koKR (#188)  
    Co-authored-by: Artemis <QartemisT@gmail.com>  
- Add DMF cannon mod for classic (#189)  
- Push miner timer adjustments for BH  
- Push rest of Darkflame Cleft initial mods  
- Update 64 mods to use GetSpellName instead of GetSpellInfo where appropriate  
- Some misc Dungeon updates for Dragonflight  
     - Added nameplate timer to Vicious Lunch in Algether Academy  
     - Adjusted first Screech on Crawth in Algether Academy  
     - Removed unused on Echo of Doragosa in Algether Academy  
     - All timers and alerts on Leymor now includes count in Azure Vault  
     - All timers and alerts on Umbrelskul now include count in Azure Vault  
     - Updated Rending Strike timer on balakar khan for season 4 in Nokhud  
     - Slightly shortened initial timers for Terra in Nokhud  
     - Improved defensive bulwark timer on Lost dwarves to only start if cast finishes, so it's not falsely shown on CD if target dies during initial cast and boss recasts on someone else.  
- Updated timers for first and second boss of Cinderbrew Meadery  
    Added trash alerts and nameplate timers to all first and second boss trash in Cinderbrew Meadery  
    Added Auto Gossip option for profession buffs up to 2nd boss in Cinderbrew Meadery  
- Add koKR locale to WW mod (#185)  
    Co-authored-by: Artemis <QartemisT@gmail.com>  
- Fully populate The Rookery with as many trash warnings and nameplate timers as I found notable in doing dungeon solos and duos  
- Update zhCN (#184)  
- Upd .toc file and add RU locale (#181)  
- Few rookery boss updates  
- Timer tweak  
- Fix 1 error and silence another that's misreported  
- Cinderbrew Meadery update  
     - All mods have timers and alerts now  
     - All events vetted  
     - About half timers done, but gonna need to do a 1-2 man run later to get pulls long enough to finish them  
- Fix luacheck  
- since addons already enabled, push current dungeon work  
- Push war within prep  
- Update .pkgmeta  
- Actually just remove that stuff. I was mistaken. while they DO exist in wrath still, the new functions ALSO exist so we actually can safe delete these as deprecated  
- Disable global checks on this file because deprecated quest functions still need to be used in wrath, but ketho's plugin has already removed them  
- Update README.md  
- readd args for just package name, and remove classic suffix  
- just make one file instead of multiple. the multi toc system handles retail packages on classic now so no longer a reason to make multiple zips  
