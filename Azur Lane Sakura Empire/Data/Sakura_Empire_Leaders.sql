INSERT INTO Types (Type, Kind)
VALUES	('LEADER_AZUR_LANE_AYANAMI',					'KIND_LEADER'	),
		('LEADER_AZUR_LANE_YUUDACHI',					'KIND_LEADER'	),
		('LEADER_AZUR_LANE_SHIGURE',					'KIND_LEADER'	),
		('LEADER_AZUR_LANE_YUKIKAZE',					'KIND_LEADER'	),
		('TRAIT_LEADER_KISHIN',							'KIND_TRAIT'	),
		('TRAIT_LEADER_SOLOMON_NIGHTMARE',				'KIND_TRAIT'	),
		('TRAIT_LEADER_SASEBO_NO_SHIGURE',				'KIND_TRAIT'	),
		('TRAIT_LEADER_KURE_NO_YUKIKAZE',				'KIND_TRAIT'	);

INSERT INTO Leaders (LeaderType, Name, Sex, InheritFrom, SceneLayers)
VALUES	('LEADER_AZUR_LANE_AYANAMI',	'LOC_LEADER_AZUR_LANE_AYANAMI_NAME',	'Female', 'LEADER_DEFAULT', 4),
		('LEADER_AZUR_LANE_YUUDACHI',	'LOC_LEADER_AZUR_LANE_YUUDACHI_NAME',	'Female', 'LEADER_DEFAULT', 4),
		('LEADER_AZUR_LANE_SHIGURE',	'LOC_LEADER_AZUR_LANE_SHIGURE_NAME',	'Female', 'LEADER_DEFAULT', 4),
		('LEADER_AZUR_LANE_YUKIKAZE',	'LOC_LEADER_AZUR_LANE_YUKIKAZE_NAME',	'Female', 'LEADER_DEFAULT', 4);

INSERT INTO CivilizationLeaders (CivilizationType, LeaderType, CapitalName)
VALUES	('CIVILIZATION_AZUR_LANE_SE',	'LEADER_AZUR_LANE_AYANAMI',		'LOC_CITY_NAME_SAKURA_EMPIRE_1'),
		('CIVILIZATION_AZUR_LANE_SE',	'LEADER_AZUR_LANE_YUUDACHI',	'LOC_CITY_NAME_SAKURA_EMPIRE_1'),
		('CIVILIZATION_AZUR_LANE_SE',	'LEADER_AZUR_LANE_SHIGURE',		'LOC_CITY_NAME_SAKURA_EMPIRE_1'),
		('CIVILIZATION_AZUR_LANE_SE',	'LEADER_AZUR_LANE_YUKIKAZE',	'LOC_CITY_NAME_SAKURA_EMPIRE_1');

INSERT INTO LoadingInfo (LeaderType, ForegroundImage, BackgroundImage, PlayDawnOfManAudio)
VALUES	('LEADER_AZUR_LANE_AYANAMI',	'LOADING_FOREGROUND_AL_AYANAMI',	'LOADING_BACKGROUND_SAKURA_EMPIRE', 1),
		('LEADER_AZUR_LANE_YUUDACHI',	'LOADING_FOREGROUND_AL_YUUDACHI',	'LOADING_BACKGROUND_SAKURA_EMPIRE', 1),
		('LEADER_AZUR_LANE_SHIGURE',	'LOADING_FOREGROUND_AL_SHIGURE',	'LOADING_BACKGROUND_SAKURA_EMPIRE', 1),
		('LEADER_AZUR_LANE_YUKIKAZE',	'LOADING_FOREGROUND_AL_YUKIKAZE',	'LOADING_BACKGROUND_SAKURA_EMPIRE', 1);

INSERT INTO LeaderQuotes (LeaderType, Quote, QuoteAudio)
VALUES	('LEADER_AZUR_LANE_AYANAMI',	'LOC_PEDIA_LEADERS_PAGE_AZUR_LANE_AYANAMI_QUOTE',	'ALSE_AY_WIKI_QUOTE'),
		('LEADER_AZUR_LANE_YUUDACHI',	'LOC_PEDIA_LEADERS_PAGE_AZUR_LANE_YUUDACHI_QUOTE',	'ALSE_YU_WIKI_QUOTE'),
		('LEADER_AZUR_LANE_SHIGURE',	'LOC_PEDIA_LEADERS_PAGE_AZUR_LANE_SHIGURE_QUOTE',	'ALSE_SH_WIKI_QUOTE'),
		('LEADER_AZUR_LANE_YUKIKAZE',	'LOC_PEDIA_LEADERS_PAGE_AZUR_LANE_YUKIKAZE_QUOTE',	'ALSE_YK_WIKI_QUOTE');

--------------------------------------------------------------
INSERT INTO LeaderTraits (LeaderType, TraitType)
VALUES	('LEADER_AZUR_LANE_AYANAMI',	'TRAIT_LEADER_KISHIN'			),
		('LEADER_AZUR_LANE_YUUDACHI',	'TRAIT_LEADER_SOLOMON_NIGHTMARE'),
		('LEADER_AZUR_LANE_SHIGURE',	'TRAIT_LEADER_SASEBO_NO_SHIGURE'),
		('LEADER_AZUR_LANE_YUKIKAZE',	'TRAIT_LEADER_KURE_NO_YUKIKAZE'	);

INSERT INTO Traits (TraitType, Name, Description)
VALUES (
	'TRAIT_LEADER_KISHIN',
	'LOC_TRAIT_LEADER_KISHIN_NAME',
	'LOC_TRAIT_LEADER_KISHIN_DESCRIPTION'
),(
	'TRAIT_LEADER_SOLOMON_NIGHTMARE',
	'LOC_TRAIT_LEADER_SOLOMON_NIGHTMARE_NAME',
	'LOC_TRAIT_LEADER_SOLOMON_NIGHTMARE_DESCRIPTION'
),(
	'TRAIT_LEADER_SASEBO_NO_SHIGURE',
	'LOC_TRAIT_LEADER_SASEBO_NO_SHIGURE_NAME',
	'LOC_TRAIT_LEADER_SASEBO_NO_SHIGURE_DESCRIPTION'
),(
	'TRAIT_LEADER_KURE_NO_YUKIKAZE',
	'LOC_TRAIT_LEADER_KURE_NO_YUKIKAZE_NAME',
	'LOC_TRAIT_LEADER_KURE_NO_YUKIKAZE_DESCRIPTION'
);

INSERT INTO TraitModifiers (TraitType, ModifierId)
VALUES	('TRAIT_LEADER_KISHIN',				'TRAIT_KISHIN_NO_WAR_WEARINESS'						),
		('TRAIT_LEADER_KISHIN',				'TRAIT_KISHIN_UNITS_IGNORE_ZOC'						),
		('TRAIT_LEADER_KISHIN',				'NATIONALIDENTITY_REDUCESTRENGTHREDUCTIONFORDAMAGE'	),
		('TRAIT_LEADER_SOLOMON_NIGHTMARE',	'TRAIT_SOLOMON_NIGHTMARE_FLANKING_BONUS'			),
		('TRAIT_LEADER_SOLOMON_NIGHTMARE',	'TRAIT_SOLOMON_NIGHTMARE_PILLAGE_BONUS_DISTRICT'	),
		('TRAIT_LEADER_SOLOMON_NIGHTMARE',	'TRAIT_SOLOMON_NIGHTMARE_PILLAGE_BONUS_IMPROVEMENT'	),
		('TRAIT_LEADER_SOLOMON_NIGHTMARE',	'TRAIT_SOLOMON_NIGHTMARE_INCREASED_MEAT_FOOD'		),
		('TRAIT_LEADER_SOLOMON_NIGHTMARE',	'TRAIT_SOLOMON_NIGHTMARE_INCREASED_MEAT_PRODUCTION'	),
		('TRAIT_LEADER_SASEBO_NO_SHIGURE',	'TRAIT_SASEBO_NO_SHIGURE_GARRISON_AMENITY'			),
		('TRAIT_LEADER_KURE_NO_YUKIKAZE',	'TRAIT_LEADER_KURE_NO_YUKIKAZE_CIVIC_BOOST'			),
		('TRAIT_LEADER_KURE_NO_YUKIKAZE',	'TRAIT_LEADER_KURE_NO_YUKIKAZE_TECH_BOOST'			),
		('TRAIT_LEADER_KURE_NO_YUKIKAZE',	'CRYPTOGRAPHY_DEFENSE'								);

--------------------------------------------------------------
INSERT INTO Modifiers (ModifierId, ModifierType)
VALUES	('TRAIT_KISHIN_NO_WAR_WEARINESS',						'MODIFIER_PLAYER_ADJUST_WAR_WEARINESS'		),
		('TRAIT_SOLOMON_NIGHTMARE_PILLAGE_BONUS_DISTRICT',		'MODIFIER_PLAYER_ADJUST_DISTRICT_PILLAGE'	),
		('TRAIT_SOLOMON_NIGHTMARE_PILLAGE_BONUS_IMPROVEMENT',	'MODIFIER_PLAYER_ADJUST_IMPROVEMENT_PILLAGE'),
		('TRAIT_LEADER_KURE_NO_YUKIKAZE_CIVIC_BOOST',			'MODIFIER_PLAYER_ADJUST_CIVIC_BOOST'		),
		('TRAIT_LEADER_KURE_NO_YUKIKAZE_TECH_BOOST',			'MODIFIER_PLAYER_ADJUST_TECHNOLOGY_BOOST'	);

INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
VALUES (
	'TRAIT_KISHIN_UNITS_IGNORE_ZOC',
	'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',
	'SAKURA_EMPIRE_UNIT_IS_COMBAT_REQUIREMENTS'
),(
	'TRAIT_SOLOMON_NIGHTMARE_FLANKING_BONUS',
	'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',
	'SAKURA_EMPIRE_UNIT_IS_COMBAT_REQUIREMENTS'
),(
	'TRAIT_SOLOMON_NIGHTMARE_INCREASED_MEAT_FOOD',
	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',
	'PLOT_HAS_IMPROVED_MEAT_REQUIREMENTS'
),(
	'TRAIT_SOLOMON_NIGHTMARE_INCREASED_MEAT_PRODUCTION',
	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',
	'PLOT_HAS_IMPROVED_MEAT_REQUIREMENTS'
),(
	'TRAIT_SASEBO_NO_SHIGURE_GARRISON_AMENITY',
	'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_AMENITY',
	'CITY_HAS_GARRISON_UNIT_REQUIERMENT'
);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES	('TRAIT_KISHIN_NO_WAR_WEARINESS',			'Amount',		-100												),
		('TRAIT_KISHIN_NO_WAR_WEARINESS',			'Overall',		1													),
		('TRAIT_KISHIN_UNITS_IGNORE_ZOC',			'ModifierId',	'IGNOREZOC_IGNORE_ZOC'								),
		('TRAIT_SOLOMON_NIGHTMARE_FLANKING_BONUS',	'ModifierId',	'DOUBLE_ENVELOPMENT_BONUS_FLANKING_BONUS_MODIFIER'	),
		('TRAIT_SOLOMON_NIGHTMARE_PILLAGE_BONUS_DISTRICT',			'Amount',		50									),
		('TRAIT_SOLOMON_NIGHTMARE_PILLAGE_BONUS_IMPROVEMENT',		'Amount',		50									),
		('TRAIT_SOLOMON_NIGHTMARE_INCREASED_MEAT_FOOD',				'YieldType',	'YIELD_FOOD'						),
		('TRAIT_SOLOMON_NIGHTMARE_INCREASED_MEAT_FOOD',				'Amount',		1									),
		('TRAIT_SOLOMON_NIGHTMARE_INCREASED_MEAT_PRODUCTION',		'YieldType',	'YIELD_PRODUCTION'					),
		('TRAIT_SOLOMON_NIGHTMARE_INCREASED_MEAT_PRODUCTION',		'Amount',		1									),
		('TRAIT_SASEBO_NO_SHIGURE_GARRISON_AMENITY',				'Amount',		1									),
		('TRAIT_LEADER_KURE_NO_YUKIKAZE_CIVIC_BOOST',				'Amount',		15									),
		('TRAIT_LEADER_KURE_NO_YUKIKAZE_TECH_BOOST',				'Amount',		15									);

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
VALUES	('SAKURA_EMPIRE_UNIT_IS_COMBAT_REQUIREMENTS',	'REQUIREMENTSET_TEST_ALL'),
		('PLOT_HAS_IMPROVED_MEAT_REQUIREMENTS',			'REQUIREMENTSET_TEST_ANY');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
VALUES	('SAKURA_EMPIRE_UNIT_IS_COMBAT_REQUIREMENTS',	'REQUIREMENT_SAKURA_EMPIRE_UNIT_IS_COMBAT'	),
		('PLOT_HAS_IMPROVED_MEAT_REQUIREMENTS',			'REQUIRES_PLOT_HAS_PASTURE'					),
		('PLOT_HAS_IMPROVED_MEAT_REQUIREMENTS',			'REQUIRES_PLOT_HAS_CAMP'					),
		('PLOT_HAS_IMPROVED_MEAT_REQUIREMENTS',			'REQUIRES_PLOT_HAS_FISHINGBOATS'			);

INSERT INTO Requirements (RequirementId, RequirementType)
VALUES ('REQUIREMENT_SAKURA_EMPIRE_UNIT_IS_COMBAT', 'REQUIREMENT_UNIT_TAG_MATCHES');

INSERT INTO RequirementArguments (RequirementId, Name, Value)
VALUES ('REQUIREMENT_SAKURA_EMPIRE_UNIT_IS_COMBAT', 'Tag', 'CLASS_ALL_COMBAT_UNITS');