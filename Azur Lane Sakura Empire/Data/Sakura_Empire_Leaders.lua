function OnCivicBoostYukikaze(ePlayer)
	if (PlayerConfigurations[ePlayer]:GetLeaderTypeName() ~= 'LEADER_AZUR_LANE_YUKIKAZE') then return; end
	
    UI.PlaySound("RECEIVE_CULTURE_BOOST");
	Refresh();
end

Events.CivicBoostTriggered.Add(OnCivicBoostTriggered);