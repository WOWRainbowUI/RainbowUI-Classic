# LFG Bulletin Board

## [v3.10-115-g5372eae](https://github.com/juemrami/LFG-Bulletin-Board/tree/5372eaebb96871e3b35a0cd824980b475639ee47) (2024-05-20)
[Full Changelog](https://github.com/juemrami/LFG-Bulletin-Board/compare/v3.10...5372eaebb96871e3b35a0cd824980b475639ee47) [Previous Releases](https://github.com/juemrami/LFG-Bulletin-Board/releases)

- docs: update alpha `changelog.txt`  
- hotfix: add basic preset english tags for cataclysm (juemrami/LFG-Bulletin-Board#50)  
    **images**  
    ![image](https://i.imgur.com/Rm5H2dP.png)  
- refactor: reorganize `Tags.lua` for easier contribution (juemrami/LFG-Bulletin-Board#49)  
    - Most people will be likely be interested in editing the `dungeonTags` table.  
- ci: use manual changelog for BW Packager (juemrami/LFG-Bulletin-Board#48)  
- ci: modify github alpha release action (juemrami/LFG-Bulletin-Board#47)  
    Should only check the tag on the most recent commit instead finding the most recent tag.  
- behavior: disable "Tool Request" tab until maintenance is complete (juemrami/LFG-Bulletin-Board#46)  
    - only affects cata builds. updates tbd  
- feat: add config support for cataclysm search patterns (#44)  
    - this does not add any preset patterns, but allows users to add their own to start.  
    - user's should suggest preset patterns for their locale with pull requests.  
    - todo: update `Tags.lua` to make it more contribution friendly.  
    **images**  
    ![img](https://i.imgur.com/qBNAAKI.png)  
- docs: update `changelog.txt`  
- feat: add client generated fallbacks for missing translations (juemrami/LFG-Bulletin-Board#43)  
    - Any wrong manual translations will still be seen first since theyre not "missing". (atm)  
    Example on `ptBR`:  
    (before => after)  
    ![img1](https://i.imgur.com/iIIgExP.png)=>![img2](https://i.imgur.com/8D9LqWT.png)  
- hotfix: account for `DM` and `SFK` heroic in cata (juemrami/LFG-Bulletin-Board#42)  
    - their filter boxes will show up in the cata panel if the logged in character is above level 83.  
- feat: more dungeon keys added for cataclsym data pipeline (juemrami/LFG-Bulletin-Board#41)  
    - `RBG`: 10v10 Rated Battleground  
    - `BH`: Baradin Hold  
    - `BRC`: Blackrock Caverns  
    - `BWD`: Blackwing Descent  
    - `GB`: Grim Batol  
    - `HOO`: Halls of Origination  
    - `TOLVIR`: Lost City of the Tol'vir  
    - `BOT2`: The Bastion of Twilight  
    - `TSC`: The Stonecore  
    - `VP`: The Vortex Pinnacle  
    - `TOTT`: Throne of the Tides  
    **note**: These dungeons have no associated tags and will not be picked up in lfg messages yet.  
    This just adds them to the ui.  
- fix: `nil` index for missing addon string localizations (juemrami/LFG-Bulletin-Board#40)  
    - opted to just used the pre-localized expansions names prefixed with "filters: " as panel labels.  
- feat: add cataclysm filters panel (juemrami/LFG-Bulletin-Board#39)  
    - currently has only a couple of dungeons, bg's and misc categories.  
    - This panel should get filled out as more data is added to `/dungeons/cataclysm.lua`  
- ci: upload to github added to alpha release workflow (juemrami/LFG-Bulletin-Board#38)  
    - atm requires the tag to start with "alpha", will only release as a pre-release on the development repo  
- fix: duplicate requests when `RemoveRealm` option *disabled* (juemrami/LFG-Bulletin-Board#37)  
    - moved to using guid to match same player requests.  
    - server names will only be shown for different server from current player (can be changed in the future if requested)  
    - once server is found for a request sender all their other request's name will be updated to match.  
- refactor: Move TBC and Classic filter options to use generalized layout. (juemrami/LFG-Bulletin-Board#36)  
    Follows the wrath filter panel changes.  
    - Filter checkboxes will no longer overflow out of the config panels.  
- refactor: generalize expansion filter panel for wrath (juemrami/LFG-Bulletin-Board#35)  
    Takes advantage of the new data pipeline/api from `/dungeons/{version}.lua`  
- hotfix: `Misc` & BG filters only show in latest expansion panel (juemrami/LFG-Bulletin-Board#34)  
- refactor: tbc filters use new data provider (juemrami/LFG-Bulletin-Board#33)  
- refactor: use new data provider to generate wotlk option filters (juemrami/LFG-Bulletin-Board#32)  
    - fixes an issue with multiple chat channel filters options being drawn  
- minor: include Cata in "Tags.lua" invalid dungeon cleanup (juemrami/LFG-Bulletin-Board#30)  
- refactor: `dungeonLevel` tables hooked to new data provider (juemrami/LFG-Bulletin-Board#29)  
    Note, that all the tables could be removed and simplified with a single call to `GBB.GetDungeonLevelRanges()`.  
    With no args it will return levels for all expansions dungeons, raids, and bgs.  
- refactor: use `/dungeons/cata.lua` for generating sorted dungeon keys (juemrami/LFG-Bulletin-Board#28)  
    The new data pipeline api's will return empty tables when queried for non classic  
    dungeon while in the classic client. Meaning this change shouldn't affect classic builds.  
- fix: move from deprecated `LFGBrowseFrame` to `LFGListFrame`  
    related issues:  
    - #181  
    - #190  
- feat: add Cataclysm dungeon module following new data pipeline  
    Any cataclysm specific dungeons have the `NULL` at the moment.  
    This is required to get the pipeline to play nicely with the existing code for wotlk.  
    The keys for these dungeons should be decided at somepoint.  
- CI: typo fix to `release\_alpha.yml`  
    ... again  
- refactor: update `Options.lua` classic filters to new data pipeline  
    Also re-organized the layout and added appropriate headers using FRAME\_XML globals.  
    **images**  
    ![image](https://i.imgur.com/LK4D0y3.png)  
- minor: use `WOW\_PROJECT\_ID` over `GetBuildInfo` in `Options.lua`  
- deprecate: remove classic era hack from `Tags.lua`  
    New data provider uses `NAXX` instead of `NAX` for the key.  
    New data provider also provides battleground keys removing the need for SodPvpNames.  
- minor: rename `GBB.VanillaDungeonNames` to `GBB.VanillaDungeonKeys`  
    This is to better reflect the purpose of the table, and differentiate from  
    the `GBB.GetDungeonNames` function.  
- refactor: use new data system to generate `GBB.VanillaDungeonNames`  
    Previously this was a hardcoded list of all the dungeon/raid keys.  
    Now it is generated from the data system.  
- hotfix: insert keys `NAXX` + `ONY`` into `GBB.VanillDungeonNames`  
- refactor: `GBB.dungeonLevel` to use new dungeon data  
- refactor: cleanup `Dungeons.lua` locals and globals  
    - lots variables that arent referenced across the namespace have been made local  
- feat: use `GetLFGDungeonInfo` and `GetActivityInfoTable` to generate dungeon info  
    This allows the addon to use client info for generating localized strings and dungeon levels, and other dungeon info.  
- CI: tweaks to cata release action  
    Added and environment to be able to set a timer/review rules for the action.  
- fix: categories only take up required space  
    - removes old intended behavior where space based on the `ShowOnlyNb` limit was created for all shown categories  
    - fixes bug no.4 in #232  
- behavior: avoid empty category headers with `ShowOnlyEnable`  
    Removes the creation of headers for dungeons/categories with no request whenever the `ShowOnlyEnable` option is set.  
- fix: `CombineSubDungeons` compatibility in `UpdateList` main loop  
    The older logic was very convoluted when the `EnableShowOnly` option was set.  
     - fixes #232 where sub dungeon headers (SML/SMG/SMA/etc) were being shown even when combine sub-dungeons option was set.  
- fix: prevent non exisiting dungeons from being added to `dungeonSort`  
    Because non classic dungeons are added to this table, other options which iterate this table might cause bugs.  
    - fixes a bug where `GBB.UpdateList` would create header for invalid (for client) dungeons when the  `GBB.DB.EnableShowOnly` was enabled  
- dev: clarity updates to the `UpdateList` function  
    - this changes none of the functionality, but renames variable and moves conditional logic to be more readable for debugging purposes.  
- CI: fix typo in packager args & update to `checkout@v4`  
- CI: add multiple game versions to TOC  
    This file should not be packaged directly anymore.  
    The packager will dynamically generate the toc file based on the game version it is packaging for.  
    see https://github.com/marketplace/actions/wow-packager?version=v2.3.1#single-toc-file  
- CI: add BW packager for alpha builds to workflows  
    Any un-tagged pushes to main will push a new alpha build to curseforge.  
    Currently only set for releasing to alpha and when pushing to my development branch.  
- Merge pull request #234 from juemrami/fix-reset-window-ui-bug  
    fix: update hardcoded sizing in `GBB.ResetWindow`  
- fix: update hardcoded sizing in `GBB.ResetWindow`  
    - fixes a ui issue where the `/gbb reset` or `Reset Position` option would shrink the window width causing the searchbar to overflow  
- Merge pull request #231 from ista1024/Added-reset-position-button-on-the-regular-setting  
    Added reset position button on the regular setting  
-  - Followed by comment from https://github.com/Vysci/LFG-Bulletin-Board/pull/227  
       - The quick access setting on the minimap is misplaced and should be relocated to the regular settings, as it's not an option that needs to be frequently changed.  
       - And it has been mentioned how to reset the window with command ```/gbb reset``` in about section in the regular settings, it might still be hard for users to find.  
       - Used GlobalStrings "RESET\_POSITION": https://github.com/Vysci/LFG-Bulletin-Board/pull/230#issuecomment-2094916287  
    Code changed  
     - Added button on the bottom of the regular setting menu  
     Test  
     - Click on "Reset Window Position" button on the regular setting menu  
       1. Reseted ether opened or closed window.  
       2. Close popup-menu after close.  
       3. No Lua error caused.  
    ![Screenshot 2024-05-05 164538](https://github.com/Vysci/LFG-Bulletin-Board/assets/128768603/9a725fb0-21ab-48f4-8087-e665121e0b85)  
- Merge pull request #228 from juemrami/drag-notificiation-icon-visual-fix  
    minor: `ResizeCursor` icon indicates grow direction again  
- Merge pull request #229 from juemrami/scrollbar-ui-fix  
    minor: hide unused `ScrollFrames` in classic  
- minor: hide unused `ScrollFrame`s in classic  
    - fixes a ui issue with multiple overlapping scrollbars being always visible.  
- minor: Resize cursor icon indicates grow direction  
- Merge pull request #226 from juemrami/remove-heroic-normal-column  
    feat: remove "[N]" and "[H]" columns in classic era.  
- Merge pull request #225 from juemrami/clamp-window-to-screen  
    fix: `SetClampedToScreen` to `true` for `GroupBulletinBoardFrame`  
- feat: remove "[N]" and "[H]" columns in classic era.  
    - minor, but helps declutter to board by making more room for the actual message  
- changelog  
    changelog  
- Merge pull request #219 from juemrami/remove-unused-tags  
    Remove unused dungeon tags for vanilla clients  
- Merge pull request #218 from juemrami/fix-combine-dungeon-option  
    Fix "Combine sub-dungeon" option  
- Merge pull request #223 from juemrami/fix-class-color-taint  
    fix: `TableCopy` reference to global `RAID\_CLASS\_COLORS` to prevent taint.  
- fix: copy instead of reference global table to prevent taint  
    taint occurs as `Tool.ClassColor[k] = v;` on line 61 when using a reference to the original table.  
- fix: `SetClampedToScreen` to `true` for `GroupBulletinBoardFrame`  
    prevents frame being dragged out of screen limit.  
- minor: Remove debug `assert`s  
    no errors after running for a couple of hours.  
- minor: remove bandaids and add asserts to test addon  
    these should now always have sort indices  
- major: purge any tags related to non existing dungeons for vanilla clients.  
    valid dungeons are the ones in `GBB.VanillDungeonNames`, `GBB.PvpSodNames`. `GBB.Misc`, `GBB.dungeonSecondTags`, and some edge case exceptions.  
- fix: uncomment difficulty filtering in `GBB.FilterDungeon`  
- minor: more variable name updates for consistency  
- minor: typo fix `DEATHMINES` -> `DEADMINES` in `FixFIlters()`  
- minor: more descript variable names for future maintainers  
    mostly done trying to figure out the combine header stuff.  
- fix: `dungeonSort` only indexed in one direction for `SM2` and `DM2`  
    as a result when `UpdateList` gets to one of these dungeon entries it fails to find the dungeons associated sort index in `dungeonSort` and `nil` is passed for this dungeon to `CreateHeader(yy,GBB.dungeonSort[headerIdx])` resulting in no header.  
- Merge pull request #215 from Vysci/fix\_lua\_errors  
    fixing errors when sorting  
- fixing errors when sorting  
    This is the fix for when we try to sort and while a and b exists one of them might not exists in GBB.dungeonSort  
- Merge pull request #213 from Vysci/sod\_new\_categories  
    Adding bloodmoon and incursions  
- updated tags  
    updated bloodmoon tag  
- adding a quick travel filter to minimap  
    adding a quick travel filter to minimap  
- Adding bloodmoon and incursions  
    Adding blood moon and incursions as new category  
- Merge pull request #211 from Arovix/start-collapsed-option  
    Option for headers to start collapsed  
- Rename fold/unfold to collapse/expand  
- Simplify conditional  
- Update change log with new hotkey  
- Switch 'fold all' hotkey to shift+left-click  
- Merge pull request #210 from juemrami/support-custom-class-colors  
    feat: add support for `CUSTOM\_CLASS\_COLORS` table  
- Fix new headers moving around when starting folded  
- Version bump + changelog  
- Middle clicking a header will toggle fold on all of them  
- Add option for headers to start collapsed  
    This also fixes the 'Fold all' and 'Unfold all' buttons to affect  
    everything, not just dungeons. e.g. 'Trade', 'Misc.', etc.  
- updating changelog  
- feat: add support for `CUSTOM\_CLASS\_COLORS` table  
    removed code directly indexing to `RAID\_CLASS\_COLOR` in favor of the `Addon.Tool.ClassColor` reference to the same table to keep everything consistent.  
- Merge pull request #206 from juemrami/add-results-filter  
    feature: Add a search box to filter request list entries.  
- Merge pull request #208 from juemrami/fix-french-localization  
    bugfix: Fix to french `lfg\_channel` localization  
- changelog  
- feat: Multi word search over single pattern  
    ex:  
    if the search is set to "tank, sum"  
    it will match any message who contains both words "sum" and "tank" instead of containing exactly the phrase "tank, sum"  
    Making it possible to filter for post like:  
    - "Lf2m tank/dps have summon"  
    - "LF tank, sum avail"  
    - "Tank LFG, summs needed!"  
    whereas the single pattern match would only filter for the 2nd example that contains exactly "tank, sum"  
    Words can be separated with both spaces and commas.  
- minor: whitespace fixes  
- bug: fix incorrect french localization  
    see https://wago.tools/db2/ChatChannels?build=1.15.2.54092&locale=frFR  
    fixes people on FR clients automatically attempting to join the unofficial "RechercheDeGroupe" channel on login.  
- fixing heroic mode toggle  
- Update GroupBulletinBoard.lua  
- minor: ui adjustments for search box  
    removed previously commented out anchor for the title to make room for the searchbox.  
- fix: prevent hidden entries from taking up space  
    This was done by just adding an additional filtering conditional before the `CreateItem` is called for a request durring an `UpdateList` call.  
- feat: add basic search box  
    Minimum width of the resizeable parent had to be increased to make space for the editbox.  
    took the first approach that came to mind with hooking onto `UpdateList` and calling it everytime the text is changed. This should be debounced for performance.  
    todo: currently the filtered frames are hidden but still take up space in the scrollbox. this needs to be fixed.  
- Hiding tbc and wotlk panels for SoD  
- SoD P3  
    SoD P3  
- Defaulting filters to on after update`  
    Defaulting filters to on after update`  
- Travel option + bug fixes  
    - New travel category thanks to surgioclemente. Enables all summoning related things to be moved there  
    - Some cleanup of wotlk, classic code  
    - Fix duplicate things appearing in trade  
- Merge pull request #202 from surgioclemente/main  
    Allow better isolation of summoning services popular in SoD  
- Allow better isolation of summoning services popular in Season of Discovery  
    With Seaon of Discovery both trade and lfg have been hammered with people advertising fast traveling services.  This change lets you separate those into their own category.  It also brings a new checkbox that will prevent those services from showing up in the trade bulletin list  
- Merge pull request #195 from dtwach/main  
    Add Option to hide Realmnames  
- Merge pull request #189 from misabel/patch-1  
    nit: README.md reformat  
- fix broken spacing  
- add translations from deepl/gtranslate  
- add checkbox to remove realms, default is off  
- Update README.md  
    formatting doc do u even md  
- Merge pull request #188 from bjthompson805/main  
    Update for 3.4.3  
- Update for 3.4.3  
- Update LFGBulletinBoard.toc  
- Merge pull request #183 from zackchadwick/main  
    Update for Classic Era 1.14.4  
- Update for Classic Era 1.14.4  
