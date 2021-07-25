INSERT INTO Players(
	Domain,
	CivilizationType,
	CivilizationName,
	CivilizationIcon,
	CivilizationAbilityName,
	CivilizationAbilityDescription,
	CivilizationAbilityIcon,
	LeaderType,
	LeaderName,
	LeaderIcon,
	LeaderAbilityName,
	LeaderAbilityDescription,
	LeaderAbilityIcon,
	Portrait,
	PortraitBackground
) VALUES (
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* CivName */ 'LOC_CIVILIZATION_AZUR_LANE_SE_NAME',
	/* CivIcon */ 'ICON_CIVILIZATION_AZUR_LANE_SE',
	/* UA Name */ 'LOC_TRAIT_CIVILIZATION_SAKURA_EMPIRE_NAME',
	/* UA Dscp */ 'LOC_TRAIT_CIVILIZATION_SAKURA_EMPIRE_DESCRIPTION',
	/* UA Icon */ 'ICON_CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_AYANAMI',
	/* LdrName */ 'LOC_LEADER_AZUR_LANE_AYANAMI_NAME',
	/* LdrIcon */ 'ICON_LEADER_AZUR_LANE_AYANAMI',
	/* LA Name */ 'LOC_TRAIT_LEADER_KISHIN_NAME',
	/* LA Dscp */ 'LOC_TRAIT_LEADER_KISHIN_DESCRIPTION',
	/* LA Icon */ 'ICON_LEADER_AZUR_LANE_AYANAMI',
	/* Prtrait */ 'PORTRAIT_LEADER_AL_AYANAMI',
	/* Backgnd */ 'PORTRAIT_BACKGROUND_AZUR_LANE_SE'
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* CivName */ 'LOC_CIVILIZATION_AZUR_LANE_SE_NAME',
	/* CivIcon */ 'ICON_CIVILIZATION_AZUR_LANE_SE',
	/* UA Name */ 'LOC_TRAIT_CIVILIZATION_SAKURA_EMPIRE_NAME',
	/* UA Dscp */ 'LOC_TRAIT_CIVILIZATION_SAKURA_EMPIRE_DESCRIPTION',
	/* UA Icon */ 'ICON_CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_YUUDACHI',
	/* LdrName */ 'LOC_LEADER_AZUR_LANE_YUUDACHI_NAME',
	/* LdrIcon */ 'ICON_LEADER_AZUR_LANE_YUUDACHI',
	/* LA Name */ 'LOC_TRAIT_LEADER_SOLOMON_NIGHTMARE_NAME',
	/* LA Dscp */ 'LOC_TRAIT_LEADER_SOLOMON_NIGHTMARE_DESCRIPTION',
	/* LA Icon */ 'ICON_LEADER_AZUR_LANE_YUUDACHI',
	/* Prtrait */ 'PORTRAIT_LEADER_AL_YUUDACHI',
	/* Backgnd */ 'PORTRAIT_BACKGROUND_AZUR_LANE_SE'
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* CivName */ 'LOC_CIVILIZATION_AZUR_LANE_SE_NAME',
	/* CivIcon */ 'ICON_CIVILIZATION_AZUR_LANE_SE',
	/* UA Name */ 'LOC_TRAIT_CIVILIZATION_SAKURA_EMPIRE_NAME',
	/* UA Dscp */ 'LOC_TRAIT_CIVILIZATION_SAKURA_EMPIRE_DESCRIPTION',
	/* UA Icon */ 'ICON_CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_SHIGURE',
	/* LdrName */ 'LOC_LEADER_AZUR_LANE_SHIGURE_NAME',
	/* LdrIcon */ 'ICON_LEADER_AZUR_LANE_SHIGURE',
	/* LA Name */ 'LOC_TRAIT_LEADER_SASEBO_NO_SHIGURE_NAME',
	/* LA Dscp */ 'LOC_TRAIT_LEADER_SASEBO_NO_SHIGURE_DESCRIPTION_RnF',
	/* LA Icon */ 'ICON_LEADER_AZUR_LANE_SHIGURE',
	/* Prtrait */ 'PORTRAIT_LEADER_AL_SHIGURE',
	/* Backgnd */ 'PORTRAIT_BACKGROUND_AZUR_LANE_SE'
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* CivName */ 'LOC_CIVILIZATION_AZUR_LANE_SE_NAME',
	/* CivIcon */ 'ICON_CIVILIZATION_AZUR_LANE_SE',
	/* UA Name */ 'LOC_TRAIT_CIVILIZATION_SAKURA_EMPIRE_NAME',
	/* UA Dscp */ 'LOC_TRAIT_CIVILIZATION_SAKURA_EMPIRE_DESCRIPTION',
	/* UA Icon */ 'ICON_CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_YUKIKAZE',
	/* LdrName */ 'LOC_LEADER_AZUR_LANE_YUKIKAZE_NAME',
	/* LdrIcon */ 'ICON_LEADER_AZUR_LANE_YUKIKAZE',
	/* LA Name */ 'LOC_TRAIT_LEADER_KURE_NO_YUKIKAZE_NAME',
	/* LA Dscp */ 'LOC_TRAIT_LEADER_KURE_NO_YUKIKAZE_DESCRIPTION',
	/* LA Icon */ 'ICON_LEADER_AZUR_LANE_YUKIKAZE',
	/* Prtrait */ 'PORTRAIT_LEADER_AL_YUKIKAZE',
	/* Backgnd */ 'PORTRAIT_BACKGROUND_AZUR_LANE_SE'
);

INSERT INTO PlayerItems (Domain, CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex)
VALUES (
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_AYANAMI',
	/* ItmType */ 'BUILDING_KAIGUN_KOSHO',
	/* ItmIcon */ 'ICON_BUILDING_KAIGUN_KOSHO',
	/* ItmName */ 'LOC_BUILDING_KAIGUN_KOSHO_NAME',
	/* Dscrptn */ 'LOC_BUILDING_KAIGUN_KOSHO_DESCRIPTION',
	/* SortIdx */ 10
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_AYANAMI',
	/* ItmType */ 'DISTRICT_SAKURA_EMPIRE_JINJA',
	/* ItmIcon */ 'ICON_DISTRICT_SAKURA_EMPIRE_JINJA',
	/* ItmName */ 'LOC_DISTRICT_SAKURA_EMPIRE_JINJA_NAME',
	/* Dscrptn */ 'LOC_DISTRICT_SAKURA_EMPIRE_JINJA_DESCRIPTION_GS',
	/* SortIdx */ 20
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_AYANAMI',
	/* ItmType */ 'UNIT_BULIN_MK1',
	/* ItmIcon */ 'ICON_UNIT_BULIN_MK1',
	/* ItmName */ 'LOC_UNIT_BULIN_MK1_NAME',
	/* Dscrptn */ 'LOC_UNIT_BULIN_MK1_DESCRIPTION',
	/* SortIdx */ 30
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_AYANAMI',
	/* ItmType */ 'UNIT_BULIN_MK2',
	/* ItmIcon */ 'ICON_UNIT_BULIN_MK2',
	/* ItmName */ 'LOC_UNIT_BULIN_MK2_NAME',
	/* Dscrptn */ 'LOC_UNIT_BULIN_MK2_DESCRIPTION',
	/* SortIdx */ 40
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_YUUDACHI',
	/* ItmType */ 'BUILDING_KAIGUN_KOSHO',
	/* ItmIcon */ 'ICON_BUILDING_KAIGUN_KOSHO',
	/* ItmName */ 'LOC_BUILDING_KAIGUN_KOSHO_NAME',
	/* Dscrptn */ 'LOC_BUILDING_KAIGUN_KOSHO_DESCRIPTION',
	/* SortIdx */ 10
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_YUUDACHI',
	/* ItmType */ 'DISTRICT_SAKURA_EMPIRE_JINJA',
	/* ItmIcon */ 'ICON_DISTRICT_SAKURA_EMPIRE_JINJA',
	/* ItmName */ 'LOC_DISTRICT_SAKURA_EMPIRE_JINJA_NAME',
	/* Dscrptn */ 'LOC_DISTRICT_SAKURA_EMPIRE_JINJA_DESCRIPTION_GS',
	/* SortIdx */ 20
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_YUUDACHI',
	/* ItmType */ 'UNIT_BULIN_MK1',
	/* ItmIcon */ 'ICON_UNIT_BULIN_MK1',
	/* ItmName */ 'LOC_UNIT_BULIN_MK1_NAME',
	/* Dscrptn */ 'LOC_UNIT_BULIN_MK1_DESCRIPTION',
	/* SortIdx */ 30
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_YUUDACHI',
	/* ItmType */ 'UNIT_BULIN_MK2',
	/* ItmIcon */ 'ICON_UNIT_BULIN_MK2',
	/* ItmName */ 'LOC_UNIT_BULIN_MK2_NAME',
	/* Dscrptn */ 'LOC_UNIT_BULIN_MK2_DESCRIPTION',
	/* SortIdx */ 40
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_SHIGURE',
	/* ItmType */ 'BUILDING_KAIGUN_KOSHO',
	/* ItmIcon */ 'ICON_BUILDING_KAIGUN_KOSHO',
	/* ItmName */ 'LOC_BUILDING_KAIGUN_KOSHO_NAME',
	/* Dscrptn */ 'LOC_BUILDING_KAIGUN_KOSHO_DESCRIPTION',
	/* SortIdx */ 10
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_SHIGURE',
	/* ItmType */ 'DISTRICT_SAKURA_EMPIRE_JINJA',
	/* ItmIcon */ 'ICON_DISTRICT_SAKURA_EMPIRE_JINJA',
	/* ItmName */ 'LOC_DISTRICT_SAKURA_EMPIRE_JINJA_NAME',
	/* Dscrptn */ 'LOC_DISTRICT_SAKURA_EMPIRE_JINJA_DESCRIPTION_GS',
	/* SortIdx */ 20
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_SHIGURE',
	/* ItmType */ 'UNIT_BULIN_MK1',
	/* ItmIcon */ 'ICON_UNIT_BULIN_MK1',
	/* ItmName */ 'LOC_UNIT_BULIN_MK1_NAME',
	/* Dscrptn */ 'LOC_UNIT_BULIN_MK1_DESCRIPTION',
	/* SortIdx */ 30
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_SHIGURE',
	/* ItmType */ 'UNIT_BULIN_MK2',
	/* ItmIcon */ 'ICON_UNIT_BULIN_MK2',
	/* ItmName */ 'LOC_UNIT_BULIN_MK2_NAME',
	/* Dscrptn */ 'LOC_UNIT_BULIN_MK2_DESCRIPTION',
	/* SortIdx */ 40
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_YUKIKAZE',
	/* ItmType */ 'BUILDING_KAIGUN_KOSHO',
	/* ItmIcon */ 'ICON_BUILDING_KAIGUN_KOSHO',
	/* ItmName */ 'LOC_BUILDING_KAIGUN_KOSHO_NAME',
	/* Dscrptn */ 'LOC_BUILDING_KAIGUN_KOSHO_DESCRIPTION',
	/* SortIdx */ 10
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_YUKIKAZE',
	/* ItmType */ 'DISTRICT_SAKURA_EMPIRE_JINJA',
	/* ItmIcon */ 'ICON_DISTRICT_SAKURA_EMPIRE_JINJA',
	/* ItmName */ 'LOC_DISTRICT_SAKURA_EMPIRE_JINJA_NAME',
	/* Dscrptn */ 'LOC_DISTRICT_SAKURA_EMPIRE_JINJA_DESCRIPTION_GS',
	/* SortIdx */ 20
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_YUKIKAZE',
	/* ItmType */ 'UNIT_BULIN_MK1',
	/* ItmIcon */ 'ICON_UNIT_BULIN_MK1',
	/* ItmName */ 'LOC_UNIT_BULIN_MK1_NAME',
	/* Dscrptn */ 'LOC_UNIT_BULIN_MK1_DESCRIPTION',
	/* SortIdx */ 30
),(
	/* Domain  */ 'Players:Expansion2_Players',
	/* CivType */ 'CIVILIZATION_AZUR_LANE_SE',
	/* LdrType */ 'LEADER_AZUR_LANE_YUKIKAZE',
	/* ItmType */ 'UNIT_BULIN_MK2',
	/* ItmIcon */ 'ICON_UNIT_BULIN_MK2',
	/* ItmName */ 'LOC_UNIT_BULIN_MK2_NAME',
	/* Dscrptn */ 'LOC_UNIT_BULIN_MK2_DESCRIPTION',
	/* SortIdx */ 40
);