local ADDON, MinArch = ...

MinArch.Options = MinArch.Ace:NewModule("Options");

local Options = MinArch.Options;
local parent = MinArch;

local function updateOrdering(frame, newValue)
    local oldValue = MinArch.db.profile.companion.features[frame].order;

    for feature, options in pairs(MinArch.db.profile.companion.features) do
        if options.order == newValue then
            MinArch.db.profile.companion.features[feature].order = oldValue;
        end
    end

    MinArch.db.profile.companion.features[frame].order = newValue;
    MinArch.Companion:Update();
end

local home = {
	name = "考古小幫手 v" .. GetAddOnMetadata("MinimalArchaeology", "Version"),
	handler = MinArch,
	type = "group",
	args = {
        message = {
            type = "description",
            name = "感謝您使用考古小幫手",  --  翻譯 X 部分
            fontSize = "small",
            width = "full",
            order = 1,
        },
		info = {
            type = "description",
            name = "如需配置選項，請展開左側的 Minimal Archaeology 部分。以下是插件和設置的概述：",  --  翻譯 X 部分
            fontSize = "small",
            width = "full",
            order = 2,
        },
		general = {
			type = "group",
            name = "通用設置 - 主窗口",  --  翻譯 X 部分
            inline = true,
            order = 3,
			args = {
				message = {
					type = "description",
					name = "打開此部分以配置 |cFFF96854雙擊右鍵勘測|r，以及 |cFFF96854主窗口|r、|cFFF96854歷史|r 和 |cFFF96854挖掘點|r 窗口。如果您不熟悉 MinArch，請點擊下面的按鈕來切換每個特定窗口。",  --  翻譯 X 部分 
					fontSize = "small",
					width = "full",
					order = 1,
				},
				main = {
					type = "execute",
					name = "切換主窗口",  --  翻譯 X 部分
					order = 2,
					func = function ()
						MinArchMain:Toggle()
					end,
                },
                digsites = {
					type = "execute",
					name = "切換歷史",  --  翻譯 X 部分
					order = 3,
					func = function ()
						MinArchHist:Toggle()
					end,
				},
				history = {
					type = "execute",
					name = "切換挖掘點",  --  翻譯 X 部分
					order = 4,
					func = function ()
						MinArchDigsites:Toggle()
					end,
				},
			}
		},
		companion = {
			type = "group",
            name = "小幫手設定",
            inline = true,
            order = 4,
			args = {
				message = {
					type = "description",
					name = "助手 |cFFF96854Companion|r 是一個小型浮動視窗，包含距離追蹤器、航點按鈕、解答、箱子和召喚隨機坐騎的按鈕。每個按鈕都可以禁用，您也可以自訂它們的順序。助手具有與其他視窗不同的縮放和自動顯示/隱藏功能。",
					fontSize = "small",
					width = "full",
					order = 1,
				},
			}
		},
		race = {
			type = "group",
            name = "種族設定",
            inline = true,
            order = 5,
			args = {
				message = {
					type = "description",
					name = "種族相關選項：|cFFF96854隱藏|r 或 |cFFF96854優先|r 種族，設定 |cFFF96854農夫模式|r 或啟用 |cFFF96854自動鑰石|r 應用。",
					fontSize = "small",
					width = "full",
					order = 1,
				},
			}
		},

		navigation = {
			type = "group",
			name = "導航設定", -- Navigation Settings
            inline = true,
            order = 6,
			args = {
				message = {
					type = "description",
					name = "|cFFF96854TomTom|r 整合選項和暴雪 |cFFF96854航點|r 系統支持（如果可用）。",
					fontSize = "small",
					width = "full",
					order = 1,
				},
			}
		}
	}
}

local general = {
    name = "一般設定", -- General Settings
	handler = MinArch,
	type = "group",
	args = {
        surveying = {
            type = "group",
            name = "測量", -- Surveying
            inline = true,
            order = 3,
            args = {
                dblClick = {
					type = "toggle",
                    name = "雙擊右鍵測量", -- Survey on Double Right Click
                    desc = "啟用後，當您使用鼠標右鍵雙擊時將施放測量。",
					get = function () return MinArch.db.profile.surveyOnDoubleClick end,
					set = function (_, newValue)
						MinArch.db.profile.surveyOnDoubleClick = newValue;
                    end,
                    width = "full",
					order = 1,
                },
                disableMounted = {
                    type = "toggle",
                    name = "騎乘時不施放", -- Don't cast while mounted
                    desc = "勾選此選項可防止在您騎乘時施放測量。",
					get = function () return MinArch.db.profile.dblClick.disableMounted end,
					set = function (_, newValue)
						MinArch.db.profile.dblClick.disableMounted = newValue;
                    end,
                    width = 1.5,
					order = 2,
                },
                disableInFlight = {
                    type = "toggle",
                    name = "飛行時不施放", -- Don't cast while flying
                    desc = "勾選此選項可防止在您飛行時施放測量。",
					get = function () return MinArch.db.profile.dblClick.disableInFlight end,
					set = function (_, newValue)
						MinArch.db.profile.dblClick.disableInFlight = newValue;
                    end,
                    width = 1.5,
					order = 3,
                },
            }
        },
		misc = {
			type = 'group',
			name = '雜項選項', -- Miscellaneous options
			inline = true,
			order = 4,
			args = {
				scale = {
					type = "range",
					name = "Window Scale",
					desc = "Scale for the Main, History and Digsites windows. The Companion is scaled using a separate slider in the Companion section.",
					min = 30,
					max = 200,
					step = 5,
					get = function () return MinArch.db.profile.frameScale end,
					set = function (_, newValue)
						MinArch.db.profile.frameScale = newValue;
						MinArch:CommonFrameScale(newValue);
					end,
					order = 1,
				},
				spacer = {
					name = "",
					fontSize = "normal",
					type = "description",
					desc = "",
					width = "full",
					order = 2,
				},
				hideMinimapButton = {
					type = "toggle",
					name = "隱藏小地圖按鈕", -- Hide Minimap Button
					desc = "隱藏小地圖按鈕",
					get = function () return MinArch.db.profile.minimap.hide end,
					set = function (_, newValue)
						MinArch.db.profile.minimap.hide = newValue;

						MinArch:RefreshMinimapButton();
					end,
					order = 1,
				},
				disableSound = {
					type = "toggle",
					name = "禁用音效", -- Disable Sound
					desc = "禁用在可以解謎神器時播放的聲音。",
					get = function () return MinArch.db.profile.disableSound end,
					set = function (_, newValue)
						MinArch.db.profile.disableSound = newValue;
					end,
					order = 2,
				},
				showWorldMapOverlay = {
					type = "toggle",
					name = "顯示世界地圖覆蓋圖示", -- Show world map overlay icons
					desc = "在世界地圖上的挖掘地點旁邊顯示種族圖示。",
					get = function () return MinArch.db.profile.showWorldMapOverlay end,
					set = function (_, newValue)
						MinArch.db.profile.showWorldMapOverlay = newValue;
						MinArch:ShowRaceIconsOnMap();
					end,
					width = "double",
					order = 5,
				},
				scale = {
					type = "range",
					name = "縮放", -- Scale
					desc = "主要、歷史和挖掘地點視窗的縮放比例。助手使用助手部分中的單獨滑塊進行縮放。",
					min = 50,
					max = 500,
					step = 5,
					get = function () return MinArch.db.profile.mapPinScale end,
					set = function (_, newValue)
						MinArch.db.profile.mapPinScale = newValue;
					end,
					disabled = function () return not MinArch.db.profile.showWorldMapOverlay end,
					order = 6,
				},
				
			}
        },
        startup = {
            type = "group",
            name = "啟動設定", -- Startup settings
            inline = true,
            order = 5,
            args = {
				note = {
                    type = "description",
                    name = "注意：這些設定不影響助手框架。", -- Note: these settings do not affect the Companion frame.
                    -- fontSize = "small",
                    width = "full",
                    order = 1,
			    },
                startHidden = {
					type = "toggle",
					name = "隱藏啟動", -- Start Hidden
					desc = "始終隱藏啟動 Minimal Archaeology。",
					get = function () return MinArch.db.profile.startHidden end,
					set = function (_, newValue)
						MinArch.db.profile.startHidden = newValue;
					end,
					order = 3,
				},
				rememberState = {
					type = "toggle",
					name = "記住視窗狀態", -- Remember window states
					desc = "記住登出（或重新載入 UI）時哪些 MinArch 視窗是打開的。",
					get = function () return MinArch.db.profile.rememberState end,
					disabled = function () return MinArch.db.profile.startHidden end,
					set = function (_, newValue)
						MinArch.db.profile.rememberState = newValue;
                    end,
                    width = 1.5,
					order = 4,
				},
            }
		},
		autoHide = {
			type = "group",
			name = "自動隱藏主視窗", -- Auto-hide main window
			inline = true,
			order = 6,
			args = {
			    note = {
                    type = "description",
                    name = "注意：這些設定不影響助手框架。", -- Note: these settings do not affect the Companion frame.
                    -- fontSize = "small",
                    width = "full",
                    order = 1,
			    },
				hideAfterDigsite = {
					type = "toggle",
					name = "挖掘地點後自動隱藏", -- Auto-hide after digsites
					desc = "完成挖掘地點後隱藏 Minimal Archaeology。",
					get = function () return MinArch.db.profile.hideAfterDigsite end,
					set = function (_, newValue)
						MinArch.db.profile.hideAfterDigsite = newValue;
					end,
					order = 2,
				},
				waitForSolve = {
					type = "toggle",
					name = "等待解謎神器", -- Wait to solve artifacts
					desc = "等待所有神器都被解謎後再自動隱藏。",
					get = function () return MinArch.db.profile.waitForSolve end,
					set = function (_, newValue)
						MinArch.db.profile.waitForSolve = newValue;
					end,
					disabled = function () return (MinArch.db.profile.hideAfterDigsite == false) end,
					order = 3
				},
				hideInCombat = {
					type = "toggle",
					name = "戰鬥中自動隱藏", -- Auto-hide in combat
					desc = "戰鬥開始時隱藏 Minimal Archaeology，戰鬥結束後重新打開。",
					get = function () return MinArch.db.profile.hideInCombat end,
					set = function (_, newValue)
						MinArch.db.profile.hideInCombat = newValue;
					end,
					order = 4,
				},
			}
		},
		autoShow = {
			type = 'group',
			name = '自動顯示主視窗', -- Auto-show main window
			inline = true,
			order = 7,
			args = {
				autoShowInDigsites = {
					type = "toggle",
					name = "在挖掘地點顯示", -- Show in digsites
					desc = "在挖掘地點移動時自動顯示 Minimal Archaeology。",
					get = function () return MinArch.db.profile.autoShowInDigsites end,
					set = function (_, newValue)
						MinArch.db.profile.autoShowInDigsites = newValue;
						MinArch.ShowInDigsite = true;
					end,
					order = 1,
				},
				autoShowOnSurvey = {
					type = "toggle",
					name = "測量時顯示", -- Show when surveying
					desc = "在挖掘地點測量時自動顯示 Minimal Archaeology。",
					get = function () return MinArch.db.profile.autoShowOnSurvey end,
					set = function (_, newValue)
						MinArch.db.profile.autoShowOnSurvey = newValue;
						MinArch.ShowOnSurvey = true;
					end,
					order = 2,
				},
				autoShowOnSolve = {
					type = "toggle",
					name = "解謎時顯示", -- Show for solves
					desc = "當可以解謎時自動顯示 Minimal Archaeology。",
					get = function () return MinArch.db.profile.autoShowOnSolve end,
					set = function (_, newValue)
						MinArch.db.profile.autoShowOnSolve = newValue;
					end,
					order = 3,
				},
				autoShowOnCap = {
					type = "toggle",
					name = "達到上限時顯示", -- Show on cap
					desc = "當種族碎片達到上限時自動顯示 Minimal Archaeology。",
					get = function () return MinArch.db.profile.autoShowOnCap end,
					set = function (_, newValue)
						MinArch.db.profile.autoShowOnCap = newValue;
					end,
					order = 3,
				},
			}
        },
        history = {
			type = 'group',
			name = '歷史視窗設定', -- History Window settings
			inline = true,
			order = 8,
			args = {
                autoResize = {
					type = "toggle",
					name = "自動調整大小", -- Auto-resize
					desc = "啟用後將自動調整歷史視窗的大小以適合所有項目",
					get = function () return MinArch.db.profile.history.autoResize end,
					set = function (_, newValue)
                        MinArch.db.profile.history.autoResize = newValue;
                        MinArch:CreateHistoryList(MinArchOptions['CurrentHistPage'], "Options");
					end,
					order = 1,
				},
				showStats = {
					type = "toggle",
					name = "顯示統計",
					desc = "顯示每個種族的進度和總解謎數。",
					get = function () return MinArch.db.profile.history.showStats end,
					set = function (_, newValue)
                        MinArch.db.profile.history.showStats = newValue;
						if newValue then
							MinArchHist.statsFrame:Show()
						else
							MinArchHist.statsFrame:Hide()
						end
					end,
					order = 2,
				},
            }
        },
	}
}

local raceSettings = {
	name = "種族設定", -- Race Settings
	handler = MinArch,
	type = "group",
	childGroups = "tab",
	args = {
		relevancy = {
			type = 'group',
			name = '關聯性', -- Relevancy
			inline = false,
			order = 1,
			args = {
				message = {
					type = "description",
					name = "自訂當切換相關種族開關時，您希望在主視窗中顯示哪些種族。\n",
					fontSize = "medium",
					width = "full",
					order = 1,
				},
				relevancySub = {
					type = 'group',
					name = '自訂關聯性', -- Customize relevancy
					order = 2,
					inline = true,
					args = {
						nearby = {
							type = "toggle",
							name = "附近可用", -- Available nearby
							desc = "顯示目前您所在的大陸上具有可用挖掘地點的種族。",
							get = function () return MinArch.db.profile.relevancy.nearby end,
							set = function (_, newValue)
								MinArch.db.profile.relevancy.nearby = newValue;
								MinArch:UpdateMain();
							end,
							order = 1,
						},
						continentSpecific = {
							type = "toggle",
							name = "資料片特定", -- Expansion-specific
							desc = "顯示可能在您當前大陸（或資料片）上可用的種族，即使它們目前沒有活躍的挖掘地點。",
							get = function () return MinArch.db.profile.relevancy.continentSpecific end,
							set = function (_, newValue)
								MinArch.db.profile.relevancy.continentSpecific = newValue;
								MinArch:UpdateMain();
							end,
							order = 2,
						},
						solvable = {
							type = "toggle",
							name = "可解謎", -- Solvable
							desc = "顯示具有可用解謎的種族，即使它們與您當前大陸無關或不可用。",
							get = function () return MinArch.db.profile.relevancy.solvable end,
							set = function (_, newValue)
								MinArch.db.profile.relevancy.solvable = newValue;
								MinArch:UpdateMain();
							end,
							order = 3,
                        },
                    },
                },
                relevancyOverrides = {
					type = 'group',
					name = '關聯性覆蓋', -- Relevancy overrides
					order = 2,
					inline = true,
					args = {
                        hideCapped = {
                            type = "toggle",
							name = "隱藏設定為農夫模式（碎片上限）的種族的無關解謎", -- Hide irrelevant solves for races set to Farming mode (fragment-capped)
							desc = "啟用後，當設定為農夫模式（碎片上限）的種族具有可用解謎時，即使它們基於其他關聯性設定是無關的，也會將其視為無關。",
							get = function () return MinArch.db.profile.relevancy.hideCapped end,
							set = function (_, newValue)
								MinArch.db.profile.relevancy.hideCapped = newValue;
                                MinArch:UpdateMain();
                            end,
                            width = "full",
							order = 5,
                        },
                    },
                },
			}
		},
		hide = {
			type = "group",
			name = "隱藏", -- Hide
			order = 2,
			inline = false,
			args = {
				message = {
					type = "description",
					name = "勾選您希望始終隱藏的種族。這將覆蓋關聯性設定。\n\n隱藏的種族不會顯示在主視窗中，助手也不會顯示它們的解謎。",
					fontSize = "medium",
					width = "full",
					order = 1,
				},
				wpIgnoreHidden = {
					type = "toggle",
					name = "Ignore hidden races when creating waypoints",
					desc = "Enable this to also ignore hidden races when creating waypoints.",
					get = function () return MinArch.db.profile.TomTom.ignoreHidden end,
                    set = function (_, newValue)
						MinArch.db.profile.TomTom.ignoreHidden = newValue;
					end,
                    disabled = function () return (MinArch:IsNavigationEnabled() == false) end,
					width = "full",
					order = 2,
                },
			}
		},
		cap = {
			type = "group",
			name = "農夫模式", -- Farming mode
			order = 3,
			inline = false,
			args = {
				message = {
					type = "description",
					name = "如果您為一個種族啟用農夫模式，主視窗將顯示該種族的碎片上限，而不是當前解謎所需的碎片。這對於收集暗月馬戲團的化石碎片很有用。",
					fontSize = "medium",
					width = "full",
					order = 1,
				},
                solveConfirmation = {
                    width = "full",
					type = "toggle",
					name = "顯示碎片上限解謎確認", -- Show confirmation for fragment-capped solves
					desc = "在為啟用農夫模式的種族解謎神器之前顯示確認",
					get = function () return MinArch.db.profile.showSolvePopup end,
					set = function (_, newValue)
						MinArch.db.profile.showSolvePopup = newValue;
					end,
					order = 1,
				},
			}
		},
		keystone = {
			type = "group",
			name = "自動鑰石", -- Auto-keystone 
			order = 4,
			inline = false,
			args = {
				message = {
					type = "description",
					name = "自動為勾選的種族應用鑰石（不常見的碎片）。",
					fontSize = "medium",
					width = "full",
					order = 1,
				},
			}
		},
	}
}

local companionSettings = {
    name = "助手設定", -- Companion Settings
	handler = MinArch,
	type = "group",
	args = {
        general = {
			type = "group",
			name = "一般設定", -- General settings
			order = 1,
			inline = true,
			args = {
                enable = {
					type = "toggle",
					name = "啟用助手框架", -- Enable the Companion frame
                    desc = "切換 MinArch 的助手框架插件。助手是一個帶有距離追蹤器和航點/測量/解謎/箱子按鈕的小框架。",
                    width = 1.5,
					get = function () return MinArch.db.profile.companion.enable end,
					set = function (_, newValue)
						MinArch.db.profile.companion.enable = newValue;

						if (newValue) then
							MinArch.Companion:Enable();
						else
							MinArch.Companion:Disable();
						end
					end,
					order = 1,
				},
				alwaysShow = {
					type = "toggle",
					name = "始終顯示", -- Always show
					desc = "啟用後始終顯示助手框架，即使您不在挖掘地點（除非在副本中或啟用了“戰鬥中隱藏”）。",
					get = function () return MinArch.db.profile.companion.alwaysShow end,
					set = function (_, newValue)
                        MinArch.db.profile.companion.alwaysShow = newValue;
                        MinArch.Companion:AutoToggle()
                    end,
                    disabled = function () return (MinArch.db.profile.companion.enable == false) end,
					order = 2,
                },
                hideInCombat = {
                    type = "toggle",
                    name = "戰鬥中隱藏", -- Hide in combat
                    desc = "啟用後在戰鬥中隱藏（即使啟用了始終顯示）。",
                    get = function () return MinArch.db.profile.companion.hideInCombat end,
                    set = function (_, newValue)
                        MinArch.db.profile.companion.hideInCombat = newValue;
                        MinArch.Companion:AutoToggle()
                    end,
                    disabled = function () return (MinArch.db.profile.companion.hideInCombat == false) end,
                    order = 3,
                },
                hrC = {
                    type = "description",
                    name = "|n顏色", -- Coloring
                    width = "full",
                    order = 4,
                },
                background = {
                    type = "color",
                    name = "背景顏色", -- Background color
                    get = function () return MinArch.db.profile.companion.bg.r, MinArch.db.profile.companion.bg.g, MinArch.db.profile.companion.bg.b end,
                    set = function (_, r, g, b, a)
                        MinArch.db.profile.companion.bg.r = r;
                        MinArch.db.profile.companion.bg.g = g;
                        MinArch.db.profile.companion.bg.b = b;
                        MinArchCompanion:Update();
                    end,
                    disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                    order = 5,
                },
                bgOpacity = {
                    type = "range",
                    name = "背景不透明度", -- Background opacity
                    desc = "設定助手的大小。默認：50%。",
                    min = 0,
                    max = 100,
                    step = 1,
                    get = function () return MinArch.db.profile.companion.bg.a * 100 end,
                    set = function (_, newValue)
                        MinArch.db.profile.companion.bg.a = newValue / 100;
                        MinArch.Companion:Update();
                    end,
                    disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                    order = 6,
                },
                hr = {
                    type = "description",
                    name = "尺寸", -- Sizing
                    width = "full",
                    order = 97,
                },
                buttonSpacing = {
                    type = "range",
                    name = "按鈕間距", -- Button spacing
                    desc = "設定按鈕之間的間距大小。默認：2。",
                    min = 0,
                    max = 20,
                    step = 1,
                    get = function () return MinArch.db.profile.companion.buttonSpacing end,
                    set = function (_, newValue)
                        MinArch.db.profile.companion.buttonSpacing = newValue;
                        MinArch.Companion:Update();
                    end,
                    disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                    order = 98,
                },
                padding = {
                    type = "range",
                    name = "填充大小", -- Padding size
                    desc = "設定助手框架的填充大小。默認：3。",
                    min = 0,
                    max = 20,
                    step = 1,
                    get = function () return MinArch.db.profile.companion.padding end,
                    set = function (_, newValue)
                        MinArch.db.profile.companion.padding = newValue;
                        MinArch.Companion:Update();
                    end,
                    disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                    order = 98,
                },
                scale = {
                    type = "range",
                    name = "縮放", -- Scale
                    desc = "設定助手的大小。默認：100。",
                    min = 30,
                    max = 300,
                    step = 5,
                    get = function () return MinArch.db.profile.companion.frameScale end,
                    set = function (_, newValue)
                        MinArch.db.profile.companion.frameScale = newValue;
                        MinArch.Companion:SetFrameScale(newValue);
                    end,
                    disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                    order = 99,
                },
            },
        },
        positioning = {
            type = "group",
            name = "位置", -- Positioning
            order = 2,
            inline = true,
            args = {
                lock = {
					type = "toggle",
					name = "鎖定位置", -- Lock in place
					desc = "禁用在助手框架上拖動，但您仍然可以通過在此選項頁面上手動修改偏移量來移動它。",
					get = function () return MinArch.db.profile.companion.lock end,
					set = function (_, newValue)
                        MinArch.db.profile.companion.lock = newValue;
                    end,
                    disabled = function () return (MinArch.db.profile.companion.enable == false) end,
					order = 1,
                },
                hr = {
                    type = "description",
                    name = "",
                    width = "full",
                    order = 2,
                },
                savePos = {
					type = "toggle",
					name = "在設定檔中儲存位置", -- Save position in profile
					desc = "啟用後將位置儲存在設定檔中，以便助手在所有使用相同設定檔的角色上都位於相同的位置。",
					get = function () return MinArch.db.profile.companion.savePos end,
					set = function (_, newValue)
                        MinArch.db.profile.companion.savePos = newValue;
                        if newValue then
                            MinArch.Companion:SavePosition()
                        end
                    end,
                    disabled = function () return (MinArch.db.profile.companion.enable == false) end,
					order = 3,
                },
                x = {
					type = "input",
					name = "水平偏移", -- Horizontal offset
					desc = "螢幕上的水平位置",
					get = function () return tostring(MinArch.db.profile.companion.posX) end,
                    set = function (_, newValue)
                        if (MinArch.db.profile.companion.enable and MinArch.db.profile.companion.savePos) then
                            MinArch.db.profile.companion.posX = tonumber(newValue);
                            local point, relativeTo, relativePoint, xOfs, yOfs = MinArchCompanion:GetPoint();
                            MinArch.Companion:ClearAllPoints();
                            MinArch.Companion:SetPoint(point, UIParent, relativePoint, tonumber(newValue), yOfs);
                            MinArch.Companion:SavePosition()
                        end
                    end,
                    disabled = function () return (MinArch.db.profile.companion.enable == false or MinArch.db.profile.companion.savePos == false) end,
					order = 4,
                },
                y = {
					type = "input",
					name = "垂直偏移", -- Vertical offset
					desc = "螢幕上的垂直位置",
					get = function () return tostring(MinArch.db.profile.companion.posY) end,
                    set = function (_, newValue)
                        if (MinArch.db.profile.companion.enable and MinArch.db.profile.companion.savePos) then
                            MinArch.db.profile.companion.posY = tonumber(newValue);
                            local point, relativeTo, relativePoint, xOfs, yOfs = MinArchCompanion:GetPoint();
                            MinArch.Companion:ClearAllPoints();
                            MinArch.Companion:SetPoint(point, UIParent, relativePoint, xOfs, tonumber(newValue));
                            MinArch.Companion:SavePosition();
                        end
                    end,
                    disabled = function () return (MinArch.db.profile.companion.enable == false or MinArch.db.profile.companion.savePos == false) end,
					order = 5,
				},
                resetButton = {
					type = "execute",
					name = "重置位置", -- Reset position
					order = 6,
					func = function ()
                        MinArch.Companion:ResetPosition();
					end,
                },
            }
        },
		featureOpts = {
            type = "group",
            name = "自訂助手功能", -- Customize Companion features
            order = 3,
            inline = true,
            args = {
                distanceTracker = {
                    type = "group",
                    name = "距離追蹤器設定", -- Distance Tracker settings
                    order = 1,
                    inline = true,
                    args = {
                        toggleDistanceTracker = {
                            type = "toggle",
                            name = "顯示距離追蹤器", -- Show distance tracker
                            desc = "切換助手框架上的距離追蹤器",
                            get = function () return MinArch.db.profile.companion.features.distanceTracker.enabled end,
                            set = function (_, newValue)
                                MinArch.db.profile.companion.features.distanceTracker.enabled = newValue;
                                MinArch.Companion:Update();
                            end,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                            order = 1,
                        },
                        distanceTrackerOrder = {
                            type = "select",
                            name = "順序", -- Order
                            values = {1, 2, 3, 4, 5, 6},
                            get = function () return MinArch.db.profile.companion.features.distanceTracker.order end,
                            set = function (info, newValue)
                                updateOrdering("distanceTracker", newValue)
                            end,
                            width = 0.5,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                            order = 2,
                        },
                        shape = {
                            type = "select",
                            name = "形狀", -- Shape
                            values = {"圓形", "方形", "三角形"}, -- "Circle", "Square", "Triangle"
                            get = function () return MinArch.db.profile.companion.features.distanceTracker.shape end,
                            set = function (info, newValue)
                                MinArch.db.profile.companion.features.distanceTracker.shape = newValue
                                MinArch.Companion:UpdateIndicatorFrameTexture()
                            end,
                        }
                    }
                },
                waypointButton = {
                    type = "group",
                    name = "航點按鈕設定", -- Waypoint button settings
                    order = 2,
                    inline = true,
                    args = {
                        toggleWaypointButton = {
                            type = "toggle",
                            name = "顯示航點按鈕", -- Show waypoint button
                            desc = "在助手框架上顯示自動航點按鈕",
                            get = function () return MinArch.db.profile.companion.features.waypointButton.enabled end,
                            set = function (_, newValue)
                                MinArch.db.profile.companion.features.waypointButton.enabled = newValue;
                                MinArch.Companion:Update();
                            end,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                            order = 6,
                        },
                        waypointButtonOrder = {
                            type = "select",
                            name = "順序", -- Order
                            values = {1, 2, 3, 4, 5, 6},
                            get = function () return MinArch.db.profile.companion.features.waypointButton.order end,
                            set = function (info, newValue)
                                updateOrdering("waypointButton", newValue)
                            end,
                            width = 0.5,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                            order = 7,
                        },
                    }
                },
                surveyButton = {
                    type = "group",
                    name = "測量按鈕設定", -- Survey button settings
                    order = 3,
                    inline = true,
                    args = {
                        toggleSurveyButton = {
                            type = "toggle",
                            name = "顯示測量按鈕", -- Show Survey button
                            desc = "在助手框架上顯示測量按鈕",
                            get = function () return MinArch.db.profile.companion.features.surveyButton.enabled end,
                            set = function (_, newValue)
                                MinArch.db.profile.companion.features.surveyButton.enabled = newValue;
                                MinArch.Companion:Update();
                            end,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                            order = 3,
                        },
                        solveButtonOrder = {
                            type = "select",
                            name = "順序", -- Order
                            values = {1, 2, 3, 4, 5, 6},
                            get = function () return MinArch.db.profile.companion.features.surveyButton.order end,
                            set = function (info, newValue)
                                updateOrdering("surveyButton", newValue)
                            end,
                            width = 0.5,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                            order = 7,
                        },
                    }
                },
                solveButton = {
                    type = "group",
                    name = "解謎按鈕設定", -- Solve button settings
                    order = 4,
                    inline = true,
                    args = {
                        toggleSolveButton = {
                            type = "toggle",
                            name = "顯示解謎按鈕", -- Show Solve button
                            desc = "在助手框架上顯示解謎按鈕",
                            get = function () return MinArch.db.profile.companion.features.solveButton.enabled end,
                            set = function (_, newValue)
                                MinArch.db.profile.companion.features.solveButton.enabled = newValue;
                                MinArch.Companion:Update();
                            end,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                            order = 20,
                        },
                        solveButtonOrder = {
                            type = "select",
                            name = "順序", -- Order
                            values = {1, 2, 3, 4, 5, 6},
                            get = function () return MinArch.db.profile.companion.features.solveButton.order end,
                            set = function (info, newValue)
                                updateOrdering("solveButton", newValue)
                            end,
                            width = 0.5,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                            order = 52,
                        },
                        relevantOnly = {
                            type = "toggle",
                            name = "僅限相關", -- For relevant only
                            desc = "啟用後僅顯示相關種族（在種族部分中自訂）的解謎",
                            get = function () return MinArch.db.profile.companion.relevantOnly end,
                            set = function (_, newValue)
                                MinArch.db.profile.companion.relevantOnly = newValue;
                                MinArch.Companion:Update();
                            end,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
							width = "full",
                            order = 53,
                        },
						alwaysShowNearest = {
                            type = "toggle",
                            name = "顯示進行中的文物",
                            desc = "啟用後，即使您還無法解決專案，也會顯示與最近挖掘地點相關的專案",
                            get = function () return MinArch.db.profile.companion.features.solveButton.alwaysShowNearest end,
                            set = function (_, newValue)
                                MinArch.db.profile.companion.features.solveButton.alwaysShowNearest = newValue;
                                MinArch.Companion:Update();
                            end,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
							width = 1.5,
                            order = 54,
                        },
						alwaysShowSolvable = {
                            type = "toggle",
                            name = "始終顯示可解文物",
                            desc = "啟用後，將覆蓋先前設定，顯示可解決的專案，即使它與最近挖掘地點無關",                            get = function () return MinArch.db.profile.companion.features.solveButton.alwaysShowSolvable end,
                            set = function (_, newValue)
                                MinArch.db.profile.companion.features.solveButton.alwaysShowSolvable = newValue;
                                MinArch.Companion:Update();
                            end,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
							width = 1.5,
                            order = 55,
                        },
						keystone = {
                            type = "toggle",
                            name = "Show keystones",
                            desc = "Enable to displays keystones on the solve button if available for the current solve. Also allows you to and apply/remove keystones (if auto-apply is not set)",
                            get = function () return MinArch.db.profile.companion.features.solveButton.keystone end,
                            set = function (_, newValue)
                                MinArch.db.profile.companion.features.solveButton.keystone = newValue;
                                MinArch.Companion:Update();
                            end,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                            order = 57,
                        },
                    }
                },
                crateButton = {
                    type = "group",
                    name = "箱子按鈕設定", -- Crate button settings
                    order = 5,
                    inline = true,
                    args = {
                        toggleCrateButton = {
                            type = "toggle",
                            name = "顯示箱子按鈕", -- Show Crate button
                            desc = "在助手框架上顯示箱子按鈕",
                            get = function () return MinArch.db.profile.companion.features.crateButton.enabled end,
                            set = function (_, newValue)
                                MinArch.db.profile.companion.features.crateButton.enabled = newValue;
                                MinArch.Companion:Update();
                            end,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                            order = 51,
                        },
                        crateButtonOrder = {
                            type = "select",
                            name = "順序", -- Order
                            values = {1, 2, 3, 4, 5, 6},
                            get = function () return MinArch.db.profile.companion.features.crateButton.order end,
                            set = function (info, newValue)
                                updateOrdering("crateButton", newValue)
                            end,
                            width = 0.5,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                            order = 52,
                        },
                    }
                },
                mountButton = {
                    type = "group",
                    name = "隨機坐騎按鈕設定", -- Random mount button settings
                    order = 6,
                    inline = true,
                    args = {
                        toggleMountButton = {
                            type = "toggle",
                            name = "顯示隨機坐騎按鈕", -- Show random mount button
                            desc = "在助手框架上顯示隨機坐騎按鈕",
                            get = function () return MinArch.db.profile.companion.features.mountButton.enabled end,
                            set = function (_, newValue)
                                MinArch.db.profile.companion.features.mountButton.enabled = newValue;
                                MinArch.Companion:Update();
                            end,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                            order = 6,
                        },
                        mountButtonOrder = {
                            type = "select",
                            name = "順序", -- Order
                            values = {1, 2, 3, 4, 5, 6},
                            get = function () return MinArch.db.profile.companion.features.mountButton.order end,
                            set = function (info, newValue)
                                updateOrdering("mountButton", newValue)
                            end,
                            width = 0.5,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                            order = 7,
                        },
                    }
                },
				skillBar = {
                    type = "group",
                    name = "Skill bar settings",
                    order = 6,
                    inline = true,
                    args = {
                        toggleMountButton = {
                            type = "toggle",
                            name = "Show skill bar",
                            desc = "Display the skill progress bar on the Companion frame",
                            get = function () return MinArch.db.profile.companion.features.skillBar.enabled end,
                            set = function (_, newValue)
                                MinArch.db.profile.companion.features.skillBar.enabled = newValue;
                                MinArch.Companion:Update();
                            end,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                            order = 1,
                        },
                    }
                },
				progressBar = {
                    type = "group",
                    name = "Progress bar settings",
                    order = 8,
                    inline = true,
                    args = {
                        toggleMountButton = {
                            type = "toggle",
                            name = "Show progress bar",
                            desc = "Display the artifact progress progress bar on the Companion frame",
                            get = function () return MinArch.db.profile.companion.features.progressBar.enabled end,
                            set = function (_, newValue)
                                MinArch.db.profile.companion.features.progressBar.enabled = newValue;
                                MinArch.Companion:Update();
                            end,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                            order = 1,
                        },
						showTooltip = {
                            type = "toggle",
                            name = "Show tooltip",
                            desc = "Display the artifact tooltip when hovering over the progress bar",
                            get = function () return MinArch.db.profile.companion.features.progressBar.showTooltip end,
                            set = function (_, newValue)
                                MinArch.db.profile.companion.features.progressBar.showTooltip = newValue;
                                MinArch.Companion:Update();
                            end,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                            order = 1,
                        },
						solveOnClick = {
                            type = "toggle",
                            name = "Solve on click",
                            desc = "Solve the currently activate artifact when clicking the progress bar",
                            get = function () return MinArch.db.profile.companion.features.progressBar.solveOnClick end,
                            set = function (_, newValue)
                                MinArch.db.profile.companion.features.progressBar.solveOnClick = newValue;
                                MinArch.Companion:Update();
                            end,
                            disabled = function () return (MinArch.db.profile.companion.enable == false) end,
                            order = 1,
                        },
                    }
                },


            }
        }
    }
}

local ArchRaceGroupText = {
	"Kul Tiras, Zuldazar",
	"Broken Isles",
	"Draenor",
	"Pandaria",
	"Northrend",
	"Outland",
	"Eastern Kingdoms, Kalimdor"
};

local ArchRaceGroups = {
	{ARCHAEOLOGY_RACE_DRUSTVARI, ARCHAEOLOGY_RACE_ZANDALARI},
	{ARCHAEOLOGY_RACE_DEMONIC, ARCHAEOLOGY_RACE_HIGHMOUNTAIN_TAUREN, ARCHAEOLOGY_RACE_HIGHBORNE},
	{ARCHAEOLOGY_RACE_OGRE, ARCHAEOLOGY_RACE_DRAENOR, ARCHAEOLOGY_RACE_ARAKKOA},
	{ARCHAEOLOGY_RACE_MOGU, ARCHAEOLOGY_RACE_PANDAREN, ARCHAEOLOGY_RACE_MANTID},
	{ARCHAEOLOGY_RACE_VRYKUL, ARCHAEOLOGY_RACE_NERUBIAN},
	{ARCHAEOLOGY_RACE_ORC, ARCHAEOLOGY_RACE_DRAENEI},
	{ARCHAEOLOGY_RACE_TOLVIR, ARCHAEOLOGY_RACE_TROLL, ARCHAEOLOGY_RACE_NIGHTELF, ARCHAEOLOGY_RACE_FOSSIL, ARCHAEOLOGY_RACE_DWARF}
};

local devSettings = {
	name = "測試/開發者設定", -- Tester/Developer Settings
	handler = MinArch,
	type = "group",
	args = {
		dev = {
			type = 'group',
			name = '除錯訊息', -- Debug messages
			inline = true,
			order = 1,
			args = {
				showStatusMessages = {
					type = "toggle",
					name = "顯示狀態訊息", -- Show status messages
					desc = "在聊天中顯示 Minimal Archaeology 狀態訊息。",
					get = function () return MinArch.db.profile.showStatusMessages end,
					set = function (_, newValue)
						MinArch.db.profile.showStatusMessages = newValue;
					end,
					order = 1,
				},
				showDebugMessages = {
					type = "toggle",
					name = "顯示除錯訊息", -- Show debug messages
					desc = "在聊天中顯示除錯訊息。除錯訊息比狀態訊息顯示更多關於插件的詳細資訊。",
					get = function () return MinArch.db.profile.showDebugMessages end,
					set = function (_, newValue)
						MinArch.db.profile.showDebugMessages = newValue;
					end,
					order = 2,
				}
			}
		}
	}
}

local TomTomSettings = {
	name = "MinArch - TomTom",
	handler = MinArch,
	type = "group",
	args = {
        blizzway = {
			type = 'group',
			name = '暴雪航點', -- Blizzard Waypoints
			inline = true,
			order = 1,
			args = {
                uiMapPoint = {
					type = "toggle",
					name = "地圖圖釘", -- Map pin
					desc = "啟用後在挖掘地點上建立地圖圖釘（僅在正式服可用）。",
					get = function () return MinArch.db.profile.TomTom.enableBlizzWaypoint end,
					set = function (_, newValue)
                        MinArch.db.profile.TomTom.enableBlizzWaypoint = newValue;
                        if MinArch.db.char.TomTom.uiMapPoint and not newValue then
                            MinArch:ClearUiWaypoint()
                        end
					end,
					disabled = function () return (MINARCH_EXPANSION == 'Cata') end,
					order = 2,
                },
                superTrack = {
					type = "toggle",
					name = "顯示浮動圖釘", -- Show floating pin
					desc = "啟用後在目的地上方顯示浮動圖釘（僅在正式服可用）。",
					get = function () return MinArch.db.profile.TomTom.superTrack end,
					set = function (_, newValue)
                        MinArch.db.profile.TomTom.superTrack = newValue;
                        if MinArch.db.char.TomTom.uiMapPoint then
							if (MINARCH_EXPANSION == 'Mainline') then
                            	C_SuperTrack.SetSuperTrackedUserWaypoint(newValue);
							end
                        end
					end,
					disabled = function () return (MinArch.db.profile.TomTom.enableBlizzWaypoint == false or MINARCH_EXPANSION == 'Cata') end,
					order = 2,
				},
            }
        },
		tomtom = {
			type = 'group',
			name = 'TomTom 選項', -- TomTom Options
			inline = true,
			order = 2,
			disabled = function () return (_G.TomTom == nil) end,
			args = {
				enable = {
					type = "toggle",
					name = "在 MinArch 中啟用 TomTom 整合", -- Enable TomTom integration in MinArch
					desc = "切換 MinArch 中的 TomTom 整合。禁用 TomTom 整合將移除 MinArch 建立的所有航點",
					width = "full",
					get = function () return MinArch.db.profile.TomTom.enableTomTom end,
					set = function (_, newValue)
						MinArch.db.profile.TomTom.enableTomTom = newValue;

						if (newValue) then
							MinArchMainAutoWayButton:Show();
							MinArchDigsitesAutoWayButton:Show();
						else
							MinArch:ClearAllDigsiteWaypoints();
							MinArchMainAutoWayButton:Hide();
							MinArchDigsitesAutoWayButton:Hide();
						end
					end,
					order = 1,
				},
				arrow = {
					type = "toggle",
					name = "顯示箭頭", -- Show Arrow
					desc = "顯示 MinArch 建立的航點的箭頭。這不會更改現有的航點。",
					get = function () return MinArch.db.profile.TomTom.arrow end,
					set = function (_, newValue)
						MinArch.db.profile.TomTom.arrow = newValue;
					end,
					disabled = function () return (MinArch:IsTomTomAvailable() == false) end,
					order = 2,
				},
				persistent = {
					type = "toggle",
					name = "持久航點", -- Persist waypoints
					desc = "切換航點持久性。這不會更改現有的航點。",
					get = function () return MinArch.db.profile.TomTom.persistent end,
					set = function (_, newValue)
						MinArch.db.profile.TomTom.persistent = newValue;
					end,
					disabled = function () return (MinArch:IsTomTomAvailable() == false) end,
					order = 3,
				},
			},
		},
		autoway = {
			type = 'group',
			name = '自動為最近的挖掘地點建立航點。', -- Automatically create waypoints for the closest digsite.
			inline = true,
			order = 3,
			args = {
				autoWayOnMove = {
					type = "toggle",
					name = "連續", -- Continuously
					desc = "連續建立/更新到最近挖掘地點的自動航點。",
					get = function () return MinArch.db.profile.TomTom.autoWayOnMove end,
					set = function (_, newValue)
						MinArch.db.profile.TomTom.autoWayOnMove = newValue;
					end,
					disabled = function () return (MinArch:IsNavigationEnabled() == false) end,
					order = 1,
				},
				autoWayOnComplete = {
					type = "toggle",
					name = "完成時", -- When completed
					desc = "完成一個挖掘地點後自動建立到最近挖掘地點的航點。",
					get = function () return MinArch.db.profile.TomTom.autoWayOnComplete end,
					set = function (_, newValue)
						MinArch.db.profile.TomTom.autoWayOnComplete = newValue;
					end,
					disabled = function () return (MinArch:IsNavigationEnabled() == false) end,
					order = 2,
                },
                prioRace = {
                    type = "select",
                    values = function ()
                        local raceSelectTable = {}
                        raceSelectTable[-1] = '不要優先'; -- Do not Prioritize
                        for i=1,ARCHAEOLOGY_NUM_RACES do
                            raceSelectTable[i] = GetArchaeologyRaceInfo(i);
                        end

                        return raceSelectTable
                    end,
					name = "優先種族", -- Prioritize a Race
                    desc = "選擇一個要優先的種族，即使有其他種族更近的挖掘地點。",
                    get = function () return MinArch.db.profile.TomTom.prioRace end,
                    set = function (_, newValue)
						MinArch.db.profile.TomTom.prioRace = newValue;
					end,
                    disabled = function () return (MinArch:IsNavigationEnabled() == false) end,
                    order = 3,
                },
				ignoreHidden = {
					type = "toggle",
					name = "忽略隱藏種族",
					desc = "啟用此選項以在創建路點時忽略隱藏種族。",
					get = function () return MinArch.db.profile.TomTom.ignoreHidden end,
                    set = function (_, newValue)
						MinArch.db.profile.TomTom.ignoreHidden = newValue;
					end,
                    disabled = function () return (MinArch:IsNavigationEnabled() == false) end,
					order = 4,
                },
			},
		},
	}
}

local PatronSettings = {
	name = "MinArch 贊助者", -- MinArch Patrons
	handler = MinArch,
	type = "group",
	args = {
		message = {
            type = "description",
            name = "感謝您使用 Minimal Archaeology。如果您喜歡這個插件，請考慮通過 |cFFF96854patreon.com/minarch|r 成為贊助者來支持開發。",
            fontSize = "normal",
            width = "full",
            order = 1,
        },
		patrons = {
			type = "group",
			name = "贊助者", -- Patrons
			inline = true,
			order = 3,
			args = {
				message = {
					type = "description",
					name = "贊助者將在此處列出。", -- Patrons will be listed here.
					fontSize = "normal",
					width = "full",
					order = 1,
				},
			}
		},
	}
	}

function Options:OnInitialize()
	local count = 1;
	for group, races in pairs(ArchRaceGroups) do
        if races[1] > 0 then
            local groupkey = 'group' .. tostring(group);

            raceSettings.args.hide.args[groupkey] = {
                type = 'group',
                name = ArchRaceGroupText[group],
                order = count + 2,
                inline = true,
                args = {
                }
            };
            raceSettings.args.cap.args[groupkey] = {
                type = 'group',
                name = ArchRaceGroupText[group],
                order = count + 1,
                inline = true,
                args = {
                }
            };
            raceSettings.args.keystone.args[groupkey] = {
                type = 'group',
                name = ArchRaceGroupText[group],
                order = count,
                inline = true,
                args = {
                }
            };
            for idx=1, #races do
                local i = races[idx];
                if i > 0 then
                    raceSettings.args.hide.args[groupkey].args['race' .. tostring(i)] = {
                        type = "toggle",
                        name = function () return GetArchaeologyRaceInfo(i) end,
                        desc = function ()
                            return "Hide the "..MinArch['artifacts'][i]['race'].." artifact bar even if it has been discovered."
                        end,
                        order = i,
                        get = function () return MinArch.db.profile.raceOptions.hide[i] end,
                        set = function (_, newValue)
                            MinArch.db.profile.raceOptions.hide[i] = newValue;
                            MinArch:UpdateMain();
                        end,
                    };
                    raceSettings.args.cap.args[groupkey].args['race' .. tostring(i)] = {
                        type = "toggle",
                        name = function () return GetArchaeologyRaceInfo(i) end,
                        desc = function ()
                            return "Use the fragment cap for the "..MinArch['artifacts'][i]['race'].." artifact bar."
                        end,
                        order = i,
                        get = function () return MinArch.db.profile.raceOptions.cap[i] end,
                        set = function (_, newValue)
                            MinArch.db.profile.raceOptions.cap[i] = newValue;
                            MinArch:UpdateMain();
                        end,
                    };
                    raceSettings.args.keystone.args[groupkey].args['race' .. tostring(i)] = {
                        type = "toggle",
                        name = function () return GetArchaeologyRaceInfo(i) end,
                        desc = function ()
                            local RuneName, _, _, _, _, _, _, _, _, _ = C_Item.GetItemInfo(MinArch['artifacts'][i]['raceitemid']);
                            local RaceName = MinArch['artifacts'][i]['race'];

                            if (RuneName ~= nil and RaceName ~= nil) then
                                return "Always use all available "..RuneName.."s to solve "..RaceName.." artifacts.";
                            end
                        end,
                        order = i,
                        get = function () return MinArch.db.profile.raceOptions.keystone[i] end,
                        set = function (_, newValue)
                            MinArch.db.profile.raceOptions.keystone[i] = newValue;
                            MinArch:UpdateMain();
                        end,
                        disabled = (i == ARCHAEOLOGY_RACE_FOSSIL)
                    };
                end
            end

            count = count + 1;
        end
	end

	self:RegisterMenus();
end

function Options:RegisterMenus()
	LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("MinArch", home);
	self.menu = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("MinArch", "專業-考古");

	LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("MinArch General Settings", general);
	self.general = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("MinArch General Settings", "一般選項", "專業-考古");

	LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("MinArch Companion Settings", companionSettings);
	self.companionSettings = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("MinArch Companion Settings", "助手選項", "專業-考古");

	LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("MinArch Race Settings", raceSettings);
	self.raceSettings = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("MinArch Race Settings", "種族選項", "專業-考古");

	LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("MinArch Navigation Settings", TomTomSettings);
	self.TomTomSettings = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("MinArch Navigation Settings", "導航選項", "專業-考古");

	LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("MinArch Developer Settings", devSettings);
    self.devSettings = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("MinArch Developer Settings", "開發者選項", "專業-考古");

	LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("MinArch Patrons", PatronSettings);
    self.patrons = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("MinArch Patrons", "贊助者", "專業-考古");

	LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("MinArch Profiles", LibStub("AceDBOptions-3.0"):GetOptionsTable(parent.db));
    self.profiles = LibStub("AceConfigDialog-3.0"):AddToBlizOptions("MinArch Profiles", "設定檔", "專業-考古");
end
