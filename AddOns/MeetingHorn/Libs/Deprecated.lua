
do
	-- Deprecated_9_1_5.lua
	if C_LFGList then
		if not C_LFGList.GetCategoryInfo then
			-- Use GetLfgCategoryInfo going forward
			function C_LFGList.GetCategoryInfo(categoryID)
				local categoryInfo = C_LFGList.GetLfgCategoryInfo(categoryID);
				if categoryInfo then
					return categoryInfo.name, categoryInfo.separateRecommended, categoryInfo.autoChooseActivity, categoryInfo.preferCurrentArea, categoryInfo.showPlaystyleDropdown;
				end
			end
		end

		if not C_LFGList.GetActivityInfo then
			function C_LFGList.GetActivityInfo(activityID, questID, showWarmode)
				local activityInfo = C_LFGList.GetActivityInfoTable(activityID, questID, showWarmode);
				if activityInfo then
					return activityInfo.fullName, activityInfo.shortName, activityInfo.categoryID, activityInfo.groupFinderActivityGroupID, activityInfo.ilvlSuggestion, activityInfo.filters, activityInfo.minLevel, activityInfo.maxNumPlayers, activityInfo.displayType, activityInfo.orderIndex, activityInfo.useHonorLevel, activityInfo.showQuickJoinToast, activityInfo.isMythicPlusActivity, activityInfo.isRatedPvpActivity, activityInfo.isCurrentRaidActivity;
				end
			end
		end
	end

	if C_Container then
		ContainerIDToInventoryID = ContainerIDToInventoryID or C_Container.ContainerIDToInventoryID
		PickupContainerItem = PickupContainerItem or C_Container.PickupContainerItem
		UseContainerItem = UseContainerItem or C_Container.UseContainerItem
		GetContainerNumSlots = GetContainerNumSlots or C_Container.GetContainerNumSlots
		GetContainerItemLink = GetContainerItemLink or C_Container.GetContainerItemLink
		GetContainerItemCooldown = GetContainerItemCooldown or C_Container.GetContainerItemCooldown
		GetContainerNumFreeSlots = GetContainerNumFreeSlots or C_Container.GetContainerNumFreeSlots
		GetItemCooldown = GetItemCooldown or C_Container.GetItemCooldown
		GetBagSlotFlag = GetBagSlotFlag or C_Container.GetBagSlotFlag
		GetBagName = GetBagName or C_Container.GetBagName

		GetContainerItemInfo = GetContainerItemInfo or function(containerIndex, slotIndex)
			local itemInfo = C_Container.GetContainerItemInfo(containerIndex, slotIndex)
			if itemInfo then
				return itemInfo.iconFileID, itemInfo.stackCount, itemInfo.isLocked, itemInfo.quality, itemInfo.isReadable, itemInfo.hasLoot, itemInfo.hyperlink, itemInfo.isFiltered, itemInfo.hasNoValue, itemInfo.itemID, itemInfo.isBound
			end
		end
	end
end