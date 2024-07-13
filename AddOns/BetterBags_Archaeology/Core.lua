---@class BetterBags: AceAddon
local BetterBags = LibStub("AceAddon-3.0"):GetAddon("BetterBags")
assert(BetterBags, "BetterBags_Archaeology requires BetterBags")

---@class Categories: AceModule
local categories = BetterBags:GetModule("Categories")

---@class Localization: AceModule
local L = BetterBags:GetModule("Localization")

---@type string, table
local _, addon = ...
local database = addon.db

-- create a category and populate with itemIDs
for index in pairs(database) do
    categories:AddItemToCategory(index, L:G(PROFESSIONS_ARCHAEOLOGY))
end