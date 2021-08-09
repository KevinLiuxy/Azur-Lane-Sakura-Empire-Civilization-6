local SakuraEmpireUI = {};
local firstPromotion: number = 0;
local firstPromotMK1: number = 0;

function OnGovernorPromoted(ePlayer, governorID, ePromotion)
	local governorDefinition = GameInfo.Governors[governorID];	-- Check if Governor is Akashi
	if (Players[ePlayer] and governorDefinition and governorDefinition.GovernorType == "GOVERNOR_AZUR_LANE_AKASHI") then

		local pGovernor = SakuraEmpireUI.GetAppointedGovernor(ePlayer, governorID);
		if (not pGovernor) then return; end						-- Check if Akashi is Established

		local pAssignedCity = SakuraEmpireUI.GetAssignedCity(pGovernor);
		if (not pAssignedCity) then pAssignedCity = Players[ePlayer]:GetCities():GetCapitalCity(); end

		local promotionDefinition = GameInfo.GovernorPromotions[ePromotion];
		if (not promotionDefinition) then return; end			-- Akashi Grant Bulin in Assigned City or Capital

		if (firstPromotion == 0 and promotionDefinition.GovernorPromotionType ~= "GOVERNOR_PROMOTION_SHOPKEEPER_KANBAN") then
			if (promotionDefinition.GovernorPromotionType == "GOVERNOR_PROMOTION_PROJECT_RESEARCH" or
				promotionDefinition.GovernorPromotionType == "GOVERNOR_PROMOTION_WISDOM_QUBE_STUDY") then
				UnitManager.InitUnit(ePlayer, "UNIT_BULIN_MK2", pAssignedCity:GetX(), pAssignedCity:GetY());
			else
				UnitManager.InitUnit(ePlayer, "UNIT_BULIN_MK1", pAssignedCity:GetX(), pAssignedCity:GetY());
			end
			return;
		end														-- Delay Initial Bulin Grant on Appointment
		firstPromotion = firstPromotion + 1;					-- (warning: reload before assignment will cause Bulin loss)
		if (promotionDefinition.GovernorPromotionType ~= "GOVERNOR_PROMOTION_PROJECT_RESEARCH" and
			promotionDefinition.GovernorPromotionType ~= "GOVERNOR_PROMOTION_WISDOM_QUBE_STUDY") then
			firstPromotMK1 = firstPromotMK1 + 1;
		end
	end
end

function OnGovernorAssigned(cityPlayer, cityID, ePlayer, governorID)
	if (firstPromotion == 0 or not Players[ePlayer]) then return; end

	local governorDefinition = GameInfo.Governors[governorID];	-- Check if Governor is Akashi
	if (governorDefinition and governorDefinition.GovernorType == "GOVERNOR_AZUR_LANE_AKASHI") then

		local pCity = Players[ePlayer]:GetCities():FindID(cityID);
		if (not pCity) then return; end							-- Grant Bulin in Assigned City after Appointment
		repeat
			if (firstPromotMK1 > 0) then
				UnitManager.InitUnit(ePlayer, "UNIT_BULIN_MK1", pCity:GetX(), pCity:GetY());
				firstPromotMK1 = firstPromotMK1 - 1;
			else
				UnitManager.InitUnit(ePlayer, "UNIT_BULIN_MK2", pCity:GetX(), pCity:GetY());
			end
			firstPromotion = firstPromotion - 1;
		until (firstPromotion == 0);
	end
end

Events.GovernorPromoted.Add(OnGovernorPromoted);
Events.GovernorAssigned.Add(OnGovernorAssigned);

--------------------------------------------------------------
function initializeFunctions()									-- Get Exposed UI Governor Functions
	if (ExposedMembers.SakuraEmpireUI_Initialized) then
		SakuraEmpireUI = ExposedMembers.SakuraEmpireUI;
		Events.GameCoreEventPublishComplete.Remove(initializeFunctions);
	end
end

Events.GameCoreEventPublishComplete.Add(initializeFunctions);