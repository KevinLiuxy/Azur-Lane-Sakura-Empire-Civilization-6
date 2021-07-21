function playSoundBulin(iPlayerID, iUnitID, hexI, hexJ, hexK, bSelected, bEditable)
	if (iPlayerID == Game.GetLocalPlayer() and bSelected) then
		local pUnit = Players[iPlayerID]:GetUnits():FindID(iUnitID);
		if (pUnit == nil) then return; end
		
		local pUnitType = GameInfo.Units[pUnit:GetUnitType()].UnitType;
		
		if (pUnitType == "UNIT_BULIN_MK1") then
			UI.PlaySound("Play_Unit_Bulin_MK1_"..math.random(5));
		elseif (pUnitType == "UNIT_BULIN_MK2") then
			UI.PlaySound("Play_Unit_Bulin_MK2_"..math.random(5));
		end
	end
end

Events.UnitSelectionChanged.Add(playSoundBulin);