local m_GOODYHUT_CULTURE	:number = DB.MakeHash("GOODYHUT_CULTURE");
local m_GOODYHUT_GOLD		:number = DB.MakeHash("GOODYHUT_GOLD");
local m_GOODYHUT_FAITH		:number = DB.MakeHash("GOODYHUT_FAITH");
local m_GOODYHUT_MILITARY	:number = DB.MakeHash("GOODYHUT_MILITARY");
local m_GOODYHUT_SCIENCE	:number = DB.MakeHash("GOODYHUT_SCIENCE");
local m_GOODYHUT_SURVIVORS	:number = DB.MakeHash("GOODYHUT_SURVIVORS");
local m_GOODYHUT_DIPLOMACY	:number = DB.MakeHash("GOODYHUT_DIPLOMACY");

function OnGoodyHutReward(ePlayer:number, unitID:number, eRewardType:number, eRewardSubType:number)	
	local pUnit = UnitManager.GetUnit(ePlayer, unitID);
	if (PlayerConfigurations[ePlayer]:GetLeaderTypeName() ~= 'LEADER_AZUR_LANE_YUKIKAZE' or pUnit == nil) then return; end
	
	if (eRewardType == m_GOODYHUT_CULTURE) then
		print("m_GOODYHUT_CULTURE");
	elseif (eRewardType == m_GOODYHUT_GOLD) then
		print("m_GOODYHUT_GOLD");
	elseif (eRewardType == m_GOODYHUT_FAITH) then
		print("m_GOODYHUT_FAITH");
	elseif (eRewardType == m_GOODYHUT_MILITARY) then
		print("m_GOODYHUT_MILITARY");
	elseif (eRewardType == m_GOODYHUT_SCIENCE) then
		print("m_GOODYHUT_SCIENCE");
	elseif (eRewardType == m_GOODYHUT_SURVIVORS) then
		print("m_GOODYHUT_SURVIVORS");
	elseif (eRewardType == m_GOODYHUT_DIPLOMACY) then
		print("m_GOODYHUT_DIPLOMACY");
	end
	
	for row in GameInfo.Technologies() do
		if (not Players[ePlayer]:GetTechs():HasTech(row.Index)) then
			if (not Players[ePlayer]:GetTechs():HasBeenBoosted(row.Index)) then
				Players[ePlayer]:GetTechs():TriggerBoost(row.Index, 1);
				szEffectText = Locale.Lookup("LOC_SCENARIO_AUSTRALIA_EVENT_BENEFIT_EFFECT_9", GameInfo.Technologies[row.Index].Name);
			end
		end
	end
	
	Game.AddWorldViewText(0, "something", pUnit:GetX(), pUnit:GetY());
end

Events.GoodyHutReward.Add(OnGoodyHutReward);