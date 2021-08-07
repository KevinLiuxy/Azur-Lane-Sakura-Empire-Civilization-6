local UNIQUE_VOICE: number = 5;
local lastPick1: number = -1;
local lastPick2: number = -1;
local m_isLoadingDone: boolean = false;


function OnLoadGameViewStateDone()								-- Only play Unit Speech when Loading ends
	m_isLoadingDone = true;
end

function OnUnitSelectionChanged(iPlayerID, iUnitID, hexI, hexJ, hexK, bSelected, bEditable)
	if (iPlayerID == Game.GetLocalPlayer() and bSelected and m_isLoadingDone) then
		local pUnit = Players[iPlayerID]:GetUnits():FindID(iUnitID);
		if (pUnit == nil) then return; end						-- Play Bulin Unit Selection Sound Effects
		
		local pUnitType = GameInfo.Units[pUnit:GetUnitType()].UnitType;
		local dice = math.random(UNIQUE_VOICE);

		if (pUnitType == "UNIT_BULIN_MK1") then					-- Avoid rolling same dice twice
			if (dice == lastPick1) then dice = dice % UNIQUE_VOICE + 1; end;
			UI.PlaySound("Play_Unit_Bulin_MK1_"..dice);
			lastPick1 = dice;
			
		elseif (pUnitType == "UNIT_BULIN_MK2") then
			if (dice == lastPick2) then dice = dice % UNIQUE_VOICE + 1 end;
			UI.PlaySound("Play_Unit_Bulin_MK2_"..dice);
			lastPick2 = dice;
		end
	end
end


function isAkashi(governorID)									-- Check if Governor is Akashi
	local governorDefinition = GameInfo.Governors[governorID];
	if (governorDefinition ~= nil) then
		if (governorDefinition.GovernorType == "GOVERNOR_AZUR_LANE_AKASHI") then
			return true;
		end
	end
	return false;
end

function OnOpenDetails(governorID, isReadOnly)
	if (not isAkashi(governorID)) then return; end				-- Only play Detail Speech when Unappointed
	
	local governorDefinition = GameInfo.Governors[governorID];
	local playerGovernors = Players[Game.GetLocalPlayer()]:GetGovernors();
	if (playerGovernors == nil) then return; end
	
	local appointedGovernor = playerGovernors:GetGovernor(governorDefinition.Hash);
	if (appointedGovernor == nil) then UI.PlaySound("ALSE_AK_DETAIL"); end
end

function OnGovernorAppointed(ePlayer, governorID)
	if (ePlayer ~= Game.GetLocalPlayer() or not isAkashi(governorID)) then return; end
	UI.PlaySound("ALSE_AK_APPOINT");
end

function OnGovernorAssigned(cityPlayer, cityID, ePlayer, governorID)
	if (ePlayer ~= Game.GetLocalPlayer() or not isAkashi(governorID)) then return; end
	UI.PlaySound("ALSE_AK_ASSIGN");
end

function OnGovernorPromoted(ePlayer, governorID, ePromotion)
	if (ePlayer ~= Game.GetLocalPlayer() or not isAkashi(governorID)) then return; end
	UI.PlaySound("ALSE_AK_PROMOTE");
end


Events.LoadGameViewStateDone.Add(OnLoadGameViewStateDone);
Events.UnitSelectionChanged.Add(OnUnitSelectionChanged);

Events.GovernorAppointed.Add(OnGovernorAppointed);
Events.GovernorAssigned.Add(OnGovernorAssigned);
Events.GovernorPromoted.Add(OnGovernorPromoted);
LuaEvents.GovernorDetailsPanel_OpenDetails.Add(OnOpenDetails);