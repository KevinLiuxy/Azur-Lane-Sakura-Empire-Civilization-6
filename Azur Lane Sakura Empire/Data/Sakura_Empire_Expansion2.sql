INSERT INTO Types (Type, Kind)
VALUES	('GOVERNOR_AZUR_LANE_AKASHI',							'KIND_GOVERNOR'				),
		('GOVERNOR_PROMOTION_SHOPKEEPER_KANBAN',				'KIND_GOVERNOR_PROMOTION'	),
		('GOVERNOR_PROMOTION_LOGISTICS_REPAIR',					'KIND_GOVERNOR_PROMOTION'	),
		('GOVERNOR_PROMOTION_EQUIPMENT_SUPPLY',					'KIND_GOVERNOR_PROMOTION'	),
		('GOVERNOR_PROMOTION_SHIPYARD_EXPANSION',				'KIND_GOVERNOR_PROMOTION'	),
		('GOVERNOR_PROMOTION_PROJECT_RESEARCH',					'KIND_GOVERNOR_PROMOTION'	),
		('GOVERNOR_PROMOTION_WISDOM_QUBE_STUDY',				'KIND_GOVERNOR_PROMOTION'	),
		('MODIFIER_SAKURA_EMPIRE_GOVERNORS_ATTACH_MODIFIER',	'KIND_MODIFIER'				),
		('MODIFIER_AKASHI_ADJUST_BUILDING_PURCHASE_COST',		'KIND_MODIFIER'				);

INSERT INTO CivilizationTraits (CivilizationType, TraitType)
VALUES	('CIVILIZATION_AZUR_LANE_SE', 'TRAIT_CIVILIZATION_UNIT_BULIN_MK1'),
		('CIVILIZATION_AZUR_LANE_SE', 'TRAIT_CIVILIZATION_UNIT_BULIN_MK2');

UPDATE Traits SET Description = Description || '_GS'
WHERE	TraitType = 'TRAIT_CIVILIZATION_DISTRICT_SAKURA_EMPIRE_JINJA'
OR		TraitType = 'TRAIT_LEADER_KISHIN'
OR		TraitType = 'TRAIT_LEADER_SASEBO_NO_SHIGURE'
OR		TraitType = 'TRAIT_LEADER_KURE_NO_YUKIKAZE';

UPDATE Traits SET Description ='LOC_TRAIT_LEADER_SOLOMON_NIGHTMARE_DESCRIPTION_GS'
WHERE TraitType = 'TRAIT_LEADER_SOLOMON_NIGHTMARE';

INSERT INTO TraitModifiers (TraitType, ModifierId)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_SAKURA_EMPIRE_JINJA',	'SAKURA_EMPIRE_JINJA_VOLCANIC_FAITH_BONUS'			),
		('TRAIT_CIVILIZATION_DISTRICT_SAKURA_EMPIRE_JINJA',	'SAKURA_EMPIRE_JINJA_GEOTHERMAL_FAITH_BONUS'		),
		('TRAIT_LEADER_SASEBO_NO_SHIGURE',					'TRAIT_SHIGURE_YUKIKAZE_PREVENET_STRUCTURAL_DAMAGE'	),
		('TRAIT_LEADER_KURE_NO_YUKIKAZE',					'TRAIT_SHIGURE_YUKIKAZE_PREVENET_STRUCTURAL_DAMAGE'	);

INSERT INTO TraitModifiers (TraitType, ModifierId)
SELECT 'TRAIT_LEADER_SASEBO_NO_SHIGURE', 'TRAIT_SHIGURE_YUKIKAZE_AVOID_' || RandomEventType
FROM RandomEvents;												-- In theory these Modifiers should avoid all Natural Disasters
																-- However since a previous Game Update they no longer works
INSERT INTO TraitModifiers (TraitType, ModifierId)				-- I keep them here in case Firaxis fixes their code some day 
SELECT 'TRAIT_LEADER_KURE_NO_YUKIKAZE', 'TRAIT_SHIGURE_YUKIKAZE_AVOID_' || RandomEventType
FROM RandomEvents;

INSERT INTO Building_TourismBombs_XP2 (BuildingType, TourismBombValue)
VALUES ('BUILDING_KAIGUN_KOSHO', 750);

INSERT INTO BuildingModifiers (BuildingType, ModifierId)
VALUES ('BUILDING_KAIGUN_KOSHO', 'SHIPYARD_UNIMPROVED_COAST_PRODUCTION');

UPDATE Districts SET Description = Description || '_GS'
WHERE DistrictType = 'DISTRICT_SAKURA_EMPIRE_JINJA';

INSERT INTO ExclusiveAgendas (AgendaOne, AgendaTwo)
VALUES	('AGENDA_WAR_PUPPET',		'AGENDA_TURTLER'),
		('AGENDA_SOLOMON_MAD_DOG',	'AGENDA_TURTLER');

INSERT INTO AgendaPreferredLeaders (AgendaType, LeaderType, PercentageChance)
VALUES	('AGENDA_GREAT_WHITE_FLEET',	'LEADER_AZUR_LANE_AYANAMI',		20),
		('AGENDA_GREAT_WHITE_FLEET',	'LEADER_AZUR_LANE_YUUDACHI',	20),
		('AGENDA_GREAT_WHITE_FLEET',	'LEADER_AZUR_LANE_SHIGURE',		20),
		('AGENDA_GREAT_WHITE_FLEET',	'LEADER_AZUR_LANE_YUKIKAZE',	20),
		('AGENDA_PILLAGER',				'LEADER_AZUR_LANE_YUUDACHI',	50),
		('AGENDA_DEMAGOGUE',			'LEADER_AZUR_LANE_YUKIKAZE',	33);

INSERT INTO AiFavoredItems (ListType, Item, Favored)
VALUES ('SakuraEmpireWonders', 'BUILDING_PANAMA_CANAL', 1);

INSERT INTO StartBiasFeatures (CivilizationType, FeatureType, Tier)
VALUES ('CIVILIZATION_AZUR_LANE_SE', 'FEATURE_VOLCANO', 4);

--------------------------------------------------------------
INSERT INTO Governors(
	GovernorType,
	Name,
	Title,
	ShortTitle,
	Description,
	IdentityPressure,
	TransitionStrength,
	Image,
	PortraitImage,
	PortraitImageSelected,
	TraitType
) VALUES (
	'GOVERNOR_AZUR_LANE_AKASHI',
	'LOC_GOVERNOR_AZUR_LANE_AKASHI_NAME',
	'LOC_GOVERNOR_AZUR_LANE_AKASHI_TITLE',
	'LOC_GOVERNOR_AZUR_LANE_AKASHI_SHORT_TITLE',
	'LOC_GOVERNOR_AZUR_LANE_AKASHI_DESCRIPTION',
	8, 100,
	'GOVERNOR_AZUR_LANE_AKASHI',
	'GOVERNOR_NORMAL_AL_AKASHI',
	'GOVERNOR_SELECTED_AL_AKASHI',
	'TRAIT_CIVILIZATION_SAKURA_EMPIRE'
);

INSERT INTO GovernorPromotionSets (GovernorType, GovernorPromotion)
VALUES	('GOVERNOR_AZUR_LANE_AKASHI',	'GOVERNOR_PROMOTION_SHOPKEEPER_KANBAN'	),
		('GOVERNOR_AZUR_LANE_AKASHI',	'GOVERNOR_PROMOTION_LOGISTICS_REPAIR'	),
		('GOVERNOR_AZUR_LANE_AKASHI',	'GOVERNOR_PROMOTION_EQUIPMENT_SUPPLY'	),
		('GOVERNOR_AZUR_LANE_AKASHI',	'GOVERNOR_PROMOTION_SHIPYARD_EXPANSION'	),
		('GOVERNOR_AZUR_LANE_AKASHI',	'GOVERNOR_PROMOTION_PROJECT_RESEARCH'	),
		('GOVERNOR_AZUR_LANE_AKASHI',	'GOVERNOR_PROMOTION_WISDOM_QUBE_STUDY'	);

INSERT INTO GovernorPromotions (GovernorPromotionType, Name, Description, Level, Column, BaseAbility)
VALUES (
	'GOVERNOR_PROMOTION_SHOPKEEPER_KANBAN',
	'LOC_GOVERNOR_PROMOTION_SHOPKEEPER_KANBAN_NAME',
	'LOC_GOVERNOR_PROMOTION_SHOPKEEPER_KANBAN_DESCRIPTION',
	0, 1, 1
),(
	'GOVERNOR_PROMOTION_LOGISTICS_REPAIR',
	'LOC_GOVERNOR_PROMOTION_LOGISTICS_REPAIR_NAME',
	'LOC_GOVERNOR_PROMOTION_LOGISTICS_REPAIR_DESCRIPTION',
	1, 2, 0
),(
	'GOVERNOR_PROMOTION_EQUIPMENT_SUPPLY',
	'LOC_GOVERNOR_PROMOTION_EQUIPMENT_SUPPLY_NAME',
	'LOC_GOVERNOR_PROMOTION_EQUIPMENT_SUPPLY_DESCRIPTION',
	1, 0, 0
),(
	'GOVERNOR_PROMOTION_SHIPYARD_EXPANSION',
	'LOC_GOVERNOR_PROMOTION_SHIPYARD_EXPANSION_NAME',
	'LOC_GOVERNOR_PROMOTION_SHIPYARD_EXPANSION_DESCRIPTION',
	2, 1, 0
),(
	'GOVERNOR_PROMOTION_PROJECT_RESEARCH',
	'LOC_GOVERNOR_PROMOTION_PROJECT_RESEARCH_NAME',
	'LOC_GOVERNOR_PROMOTION_PROJECT_RESEARCH_DESCRIPTION',
	3, 0, 0
),(
	'GOVERNOR_PROMOTION_WISDOM_QUBE_STUDY',
	'LOC_GOVERNOR_PROMOTION_WISDOM_QUBE_STUDY_NAME',
	'LOC_GOVERNOR_PROMOTION_WISDOM_QUBE_STUDY_DESCRIPTION',
	3, 2, 0
);

INSERT INTO GovernorPromotionPrereqs (GovernorPromotionType, PrereqGovernorPromotion)
VALUES	('GOVERNOR_PROMOTION_LOGISTICS_REPAIR',		'GOVERNOR_PROMOTION_SHOPKEEPER_KANBAN'	),
		('GOVERNOR_PROMOTION_EQUIPMENT_SUPPLY',		'GOVERNOR_PROMOTION_SHOPKEEPER_KANBAN'	),
		('GOVERNOR_PROMOTION_SHIPYARD_EXPANSION',	'GOVERNOR_PROMOTION_LOGISTICS_REPAIR'	),
		('GOVERNOR_PROMOTION_SHIPYARD_EXPANSION',	'GOVERNOR_PROMOTION_EQUIPMENT_SUPPLY'	),
		('GOVERNOR_PROMOTION_PROJECT_RESEARCH',		'GOVERNOR_PROMOTION_SHIPYARD_EXPANSION'	),
		('GOVERNOR_PROMOTION_WISDOM_QUBE_STUDY',	'GOVERNOR_PROMOTION_SHIPYARD_EXPANSION'	);

INSERT INTO GovernorPromotionModifiers (GovernorPromotionType, ModifierId)
VALUES	('GOVERNOR_PROMOTION_LOGISTICS_REPAIR',		'LOGISTICS_REPAIR_NAVY_NEUTRAL_HEAL'	),
		('GOVERNOR_PROMOTION_LOGISTICS_REPAIR',		'LOGISTICS_REPAIR_ALL_CONDITION_HEAL'	),
		('GOVERNOR_PROMOTION_EQUIPMENT_SUPPLY',		'EQUIPMENT_SUPPLY_GOLD_DISCOUNT'		),
		('GOVERNOR_PROMOTION_EQUIPMENT_SUPPLY',		'EQUIPMENT_SUPPLY_RESOURCE_DISCOUNT'	),
		('GOVERNOR_PROMOTION_SHIPYARD_EXPANSION',	'SHIPYARD_EXPANSION_BUILDING_DISCOUNT1'	),
		('GOVERNOR_PROMOTION_SHIPYARD_EXPANSION',	'SHIPYARD_EXPANSION_BUILDING_DISCOUNT2'	),
		('GOVERNOR_PROMOTION_SHIPYARD_EXPANSION',	'SHIPYARD_EXPANSION_BUILDING_DISCOUNT3'	),
		('GOVERNOR_PROMOTION_SHIPYARD_EXPANSION',	'SHIPYARD_EXPANSION_HARBOR_GOLD1'		),
		('GOVERNOR_PROMOTION_SHIPYARD_EXPANSION',	'SHIPYARD_EXPANSION_HARBOR_GOLD2'		),
		('GOVERNOR_PROMOTION_SHIPYARD_EXPANSION',	'SHIPYARD_EXPANSION_HARBOR_GOLD3'		),
		('GOVERNOR_PROMOTION_SHIPYARD_EXPANSION',	'SHIPYARD_EXPANSION_HARBOR_OIL1'		),
		('GOVERNOR_PROMOTION_SHIPYARD_EXPANSION',	'SHIPYARD_EXPANSION_HARBOR_OIL2'		),
		('GOVERNOR_PROMOTION_SHIPYARD_EXPANSION',	'SHIPYARD_EXPANSION_HARBOR_OIL3'		),
		('GOVERNOR_PROMOTION_PROJECT_RESEARCH',		'PROJECT_RESEARCH_SCIENCE_BUFF0'		),
		('GOVERNOR_PROMOTION_PROJECT_RESEARCH',		'PROJECT_RESEARCH_SCIENCE_BUFF1'		),
		('GOVERNOR_PROMOTION_PROJECT_RESEARCH',		'PROJECT_RESEARCH_SCIENCE_BUFF2'		),
		('GOVERNOR_PROMOTION_PROJECT_RESEARCH',		'PROJECT_RESEARCH_SCIENCE_BUFF3'		),
		('GOVERNOR_PROMOTION_PROJECT_RESEARCH',		'PROJECT_RESEARCH_PRODUCTION_BUFF0'		),
		('GOVERNOR_PROMOTION_PROJECT_RESEARCH',		'PROJECT_RESEARCH_PRODUCTION_BUFF1'		),
		('GOVERNOR_PROMOTION_PROJECT_RESEARCH',		'PROJECT_RESEARCH_PRODUCTION_BUFF2'		),
		('GOVERNOR_PROMOTION_PROJECT_RESEARCH',		'PROJECT_RESEARCH_PRODUCTION_BUFF3'		),
		('GOVERNOR_PROMOTION_WISDOM_QUBE_STUDY',	'WISDOM_QUBE_STUDY_EXTRA_GROWTH'		),
		('GOVERNOR_PROMOTION_WISDOM_QUBE_STUDY',	'RESEARCHER_SCIENCE_CITIZEN'			);

INSERT INTO GovernorPromotionModifiers (GovernorPromotionType, ModifierId)
SELECT 'GOVERNOR_PROMOTION_WISDOM_QUBE_STUDY', 'WISDOM_QUBE_STUDY_EXTRA_PRODUCTION_' || UnitType
FROM Units WHERE Domain = 'DOMAIN_SEA';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
VALUES ('MOMENT_ILLUSTRATION_GOVERNOR', 'MOMENT_DATA_GOVERNOR', 'GOVERNOR_AZUR_LANE_AKASHI', 'MOMENT_GOVERNOR_AL_AKASHI');

--------------------------------------------------------------
INSERT INTO Modifiers (ModifierId, ModifierType)
VALUES	('TRAIT_SHIGURE_YUKIKAZE_PREVENET_STRUCTURAL_DAMAGE', 'MODIFIER_SAKURA_EMPIRE_GOVERNORS_ATTACH_MODIFIER'),
		('LOGISTICS_REPAIR_ALL_CONDITION_HEAL',		'MODIFIER_PLAYER_UNITS_ADJUST_HEAL_PER_TURN'				),
		('EQUIPMENT_SUPPLY_GOLD_DISCOUNT',			'MODIFIER_PLAYER_ADJUST_UNIT_UPGRADE_DISCOUNT_PERCENT'		),
		('EQUIPMENT_SUPPLY_RESOURCE_DISCOUNT',		'MODIFIER_PLAYER_ADJUST_UNIT_UPGRADE_RESOURCE_COST_MODIFIER'),
		('SHIPYARD_EXPANSION_BUILDING_DISCOUNT1',	'MODIFIER_AKASHI_ADJUST_BUILDING_PURCHASE_COST'				),
		('SHIPYARD_EXPANSION_BUILDING_DISCOUNT2',	'MODIFIER_AKASHI_ADJUST_BUILDING_PURCHASE_COST'				),
		('SHIPYARD_EXPANSION_BUILDING_DISCOUNT3',	'MODIFIER_AKASHI_ADJUST_BUILDING_PURCHASE_COST'				),
		('SHIPYARD_EXPANSION_HARBOR_GOLD1',			'MODIFIER_BUILDING_YIELD_CHANGE'							),
		('SHIPYARD_EXPANSION_HARBOR_GOLD2',			'MODIFIER_BUILDING_YIELD_CHANGE'							),
		('SHIPYARD_EXPANSION_HARBOR_GOLD3',			'MODIFIER_BUILDING_YIELD_CHANGE'							),
		('WISDOM_QUBE_STUDY_EXTRA_GROWTH',			'MODIFIER_SINGLE_CITY_ADJUST_CITY_GROWTH'					);

INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
VALUES (
	'SAKURA_EMPIRE_JINJA_VOLCANIC_FAITH_BONUS',
	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',
	'PLOT_ADJACENT_SAKURA_JINJA_HAS_VOLCANIC_SOIL'
),(
	'SAKURA_EMPIRE_JINJA_GEOTHERMAL_FAITH_BONUS',
	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',
	'PLOT_ADJACENT_SAKURA_JINJA_HAS_GEOTHERMAL_FIISSURE'
),(
	'LOGISTICS_REPAIR_NAVY_NEUTRAL_HEAL',
	'MODIFIER_PLAYER_UNITS_ADJUST_HEAL_PER_TURN',
	'SAKURA_EMPIRE_UNIT_IS_NAVAL'
),(
	'SHIPYARD_EXPANSION_HARBOR_OIL1',
	'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',
	'CITY_HAS_LIGHTHOUSE_REQUIREMENTS'
),(
	'SHIPYARD_EXPANSION_HARBOR_OIL2',
	'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',
	'CITY_HAS_KAIGUN_KOSHO_REQUIREMENTS'
),(
	'SHIPYARD_EXPANSION_HARBOR_OIL3',
	'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',
	'CITY_HAS_SEAPORT_REQUIREMENTS'
),(
	'PROJECT_RESEARCH_SCIENCE_BUFF0',
	'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',
	'SAKURA_EMPIRE_CITY_HAS_HARBOR_REQUIREMENTS'
),(
	'PROJECT_RESEARCH_SCIENCE_BUFF1',
	'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',
	'CITY_HAS_LIGHTHOUSE_REQUIREMENTS'
),(
	'PROJECT_RESEARCH_SCIENCE_BUFF2',
	'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',
	'CITY_HAS_KAIGUN_KOSHO_REQUIREMENTS'
),(
	'PROJECT_RESEARCH_SCIENCE_BUFF3',
	'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',
	'CITY_HAS_SEAPORT_REQUIREMENTS'
),(
	'PROJECT_RESEARCH_PRODUCTION_BUFF0',
	'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',
	'SAKURA_EMPIRE_CITY_HAS_HARBOR_REQUIREMENTS'
),(
	'PROJECT_RESEARCH_PRODUCTION_BUFF1',
	'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',
	'CITY_HAS_LIGHTHOUSE_REQUIREMENTS'
),(
	'PROJECT_RESEARCH_PRODUCTION_BUFF2',
	'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',
	'CITY_HAS_KAIGUN_KOSHO_REQUIREMENTS'
),(
	'PROJECT_RESEARCH_PRODUCTION_BUFF3',
	'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',
	'CITY_HAS_SEAPORT_REQUIREMENTS'
);

INSERT INTO Modifiers (ModifierId, ModifierType)				-- Again, as of April 2021 Update, only Flood Prevention works
SELECT 'TRAIT_SHIGURE_YUKIKAZE_AVOID_' || RandomEventType, 'MODIFIER_PLAYER_ADJUST_AVOID_RANDOM_EVENT'
FROM RandomEvents;

INSERT INTO Modifiers (ModifierId, ModifierType)
SELECT	ModifierId, 'MODIFIER_SINGLE_CITY_ADJUST_UNIT_PRODUCTION'
FROM	GovernorPromotionModifiers
WHERE	ModifierId LIKE 'WISDOM_QUBE_STUDY_EXTRA_PRODUCTION_%';

INSERT INTO DynamicModifiers (ModifierType, CollectionType, EffectType)
VALUES (
	'MODIFIER_SAKURA_EMPIRE_GOVERNORS_ATTACH_MODIFIER',
	'COLLECTION_PLAYER_GOVERNORS',
	'EFFECT_ATTACH_MODIFIER'
),(
	'MODIFIER_AKASHI_ADJUST_BUILDING_PURCHASE_COST',
	'COLLECTION_OWNER',
	'EFFECT_ADJUST_BUILDING_PURCHASE_COST'
);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES (
	'TRAIT_SHIGURE_YUKIKAZE_PREVENET_STRUCTURAL_DAMAGE',
	'ModifierId',
	'REINFORCED_INFRASTRUCTURE_PREVENET_STRUCTURAL_DAMAGE'
),
		('SAKURA_EMPIRE_JINJA_VOLCANIC_FAITH_BONUS',	'Amount',				3							),
		('SAKURA_EMPIRE_JINJA_VOLCANIC_FAITH_BONUS',	'YieldType',			'YIELD_FAITH'				),
		('SAKURA_EMPIRE_JINJA_GEOTHERMAL_FAITH_BONUS',	'Amount',				3							),
		('SAKURA_EMPIRE_JINJA_GEOTHERMAL_FAITH_BONUS',	'YieldType',			'YIELD_FAITH'				),
		('LOGISTICS_REPAIR_NAVY_NEUTRAL_HEAL',			'Amount',				10							),
		('LOGISTICS_REPAIR_NAVY_NEUTRAL_HEAL',			'Type',					'NEUTRAL'					),
		('LOGISTICS_REPAIR_ALL_CONDITION_HEAL',			'Amount',				5							),
		('LOGISTICS_REPAIR_ALL_CONDITION_HEAL',			'Type',					'ALL'						),
		('EQUIPMENT_SUPPLY_GOLD_DISCOUNT',				'Amount',				30							),
		('EQUIPMENT_SUPPLY_RESOURCE_DISCOUNT',			'Amount',				30							),
		('SHIPYARD_EXPANSION_BUILDING_DISCOUNT1',		'BuildingType',			'BUILDING_LIGHTHOUSE'		),
		('SHIPYARD_EXPANSION_BUILDING_DISCOUNT1',		'Amount',				50							),
		('SHIPYARD_EXPANSION_BUILDING_DISCOUNT2',		'BuildingType',			'BUILDING_KAIGUN_KOSHO'		),
		('SHIPYARD_EXPANSION_BUILDING_DISCOUNT2',		'Amount',				50							),
		('SHIPYARD_EXPANSION_BUILDING_DISCOUNT3',		'BuildingType',			'BUILDING_SEAPORT'			),
		('SHIPYARD_EXPANSION_BUILDING_DISCOUNT3',		'Amount',				50							),
		('SHIPYARD_EXPANSION_HARBOR_GOLD1',				'BuildingType',			'BUILDING_LIGHTHOUSE'		),
		('SHIPYARD_EXPANSION_HARBOR_GOLD1',				'YieldType',			'YIELD_GOLD'				),
		('SHIPYARD_EXPANSION_HARBOR_GOLD1',				'Amount',				10							),
		('SHIPYARD_EXPANSION_HARBOR_GOLD2',				'BuildingType',			'BUILDING_KAIGUN_KOSHO'		),
		('SHIPYARD_EXPANSION_HARBOR_GOLD2',				'YieldType',			'YIELD_GOLD'				),
		('SHIPYARD_EXPANSION_HARBOR_GOLD2',				'Amount',				10							),
		('SHIPYARD_EXPANSION_HARBOR_GOLD3',				'BuildingType',			'BUILDING_SEAPORT'			),
		('SHIPYARD_EXPANSION_HARBOR_GOLD3',				'YieldType',			'YIELD_GOLD'				),
		('SHIPYARD_EXPANSION_HARBOR_GOLD3',				'Amount',				10							),
		('SHIPYARD_EXPANSION_HARBOR_OIL1',				'ResourceType',			'RESOURCE_OIL'				),
		('SHIPYARD_EXPANSION_HARBOR_OIL1',				'Amount',				1							),
		('SHIPYARD_EXPANSION_HARBOR_OIL2',				'ResourceType',			'RESOURCE_OIL'				),
		('SHIPYARD_EXPANSION_HARBOR_OIL2',				'Amount',				1							),
		('SHIPYARD_EXPANSION_HARBOR_OIL3',				'ResourceType',			'RESOURCE_OIL'				),
		('SHIPYARD_EXPANSION_HARBOR_OIL3',				'Amount',				1							),
		('PROJECT_RESEARCH_SCIENCE_BUFF0',				'YieldType',			'YIELD_SCIENCE'				),
		('PROJECT_RESEARCH_SCIENCE_BUFF0',				'Amount',				12							),
		('PROJECT_RESEARCH_SCIENCE_BUFF1',				'YieldType',			'YIELD_SCIENCE'				),
		('PROJECT_RESEARCH_SCIENCE_BUFF1',				'Amount',				13							),
		('PROJECT_RESEARCH_SCIENCE_BUFF2',				'YieldType',			'YIELD_SCIENCE'				),
		('PROJECT_RESEARCH_SCIENCE_BUFF2',				'Amount',				12							),
		('PROJECT_RESEARCH_SCIENCE_BUFF3',				'YieldType',			'YIELD_SCIENCE'				),
		('PROJECT_RESEARCH_SCIENCE_BUFF3',				'Amount',				13							),
		('PROJECT_RESEARCH_PRODUCTION_BUFF0',			'YieldType',			'YIELD_PRODUCTION'			),
		('PROJECT_RESEARCH_PRODUCTION_BUFF0',			'Amount',				6							),
		('PROJECT_RESEARCH_PRODUCTION_BUFF1',			'YieldType',			'YIELD_PRODUCTION'			),
		('PROJECT_RESEARCH_PRODUCTION_BUFF1',			'Amount',				6							),
		('PROJECT_RESEARCH_PRODUCTION_BUFF2',			'YieldType',			'YIELD_PRODUCTION'			),
		('PROJECT_RESEARCH_PRODUCTION_BUFF2',			'Amount',				6							),
		('PROJECT_RESEARCH_PRODUCTION_BUFF3',			'YieldType',			'YIELD_PRODUCTION'			),
		('PROJECT_RESEARCH_PRODUCTION_BUFF3',			'Amount',				7							),
		('WISDOM_QUBE_STUDY_EXTRA_GROWTH',				'Amount',				15							);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT 'TRAIT_SHIGURE_YUKIKAZE_AVOID_' || RandomEventType, 'RandomEventType', RandomEventType
FROM RandomEvents;

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	ModifierId, 'Amount', 75
FROM	GovernorPromotionModifiers
WHERE	ModifierId LIKE 'WISDOM_QUBE_STUDY_EXTRA_PRODUCTION_%';

INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT	ModifierId, 'UnitType', SUBSTR(ModifierId, 36)
FROM	GovernorPromotionModifiers
WHERE	ModifierId LIKE 'WISDOM_QUBE_STUDY_EXTRA_PRODUCTION_%';

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
VALUES	('PLOT_ADJACENT_SAKURA_JINJA_HAS_VOLCANIC_SOIL',		'REQUIREMENTSET_TEST_ALL'),
		('PLOT_ADJACENT_SAKURA_JINJA_HAS_GEOTHERMAL_FIISSURE',	'REQUIREMENTSET_TEST_ALL'),
		('CITY_HAS_GOVERNOR_PROMOTION_SHOPKEEPER_KANBAN',		'REQUIREMENTSET_TEST_ALL'),
		('CITY_HAS_KAIGUN_KOSHO_REQUIREMENTS',					'REQUIREMENTSET_TEST_ALL'),
		('SAKURA_EMPIRE_CITY_HAS_HARBOR_REQUIREMENTS',			'REQUIREMENTSET_TEST_ALL'),
		('PLAYER_IS_SAKURA_EMPIRE_LEADER',						'REQUIREMENTSET_TEST_ANY');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
VALUES	('PLOT_ADJACENT_SAKURA_JINJA_HAS_VOLCANIC_SOIL',		'REQUIRES_PLOT_HAS_VOLCANIC_SOIL'						),
		('PLOT_ADJACENT_SAKURA_JINJA_HAS_VOLCANIC_SOIL',		'REQUIRES_PLOT_ADJACENT_TO_SAKURA_EMPIRE_JINJA'			),
		('PLOT_ADJACENT_SAKURA_JINJA_HAS_GEOTHERMAL_FIISSURE',	'REQUIRES_PLOT_HAS_GEOTHERMAL_FIISSURE'					),
		('PLOT_ADJACENT_SAKURA_JINJA_HAS_GEOTHERMAL_FIISSURE',	'REQUIRES_PLOT_ADJACENT_TO_SAKURA_EMPIRE_JINJA'			),
		('CITY_HAS_KAIGUN_KOSHO_REQUIREMENTS',					'REQUIRES_CITY_HAS_KAIGUN_KOSHO'						),
		('SAKURA_EMPIRE_CITY_HAS_HARBOR_REQUIREMENTS',			'REQUIRES_CITY_HAS_HARBOR'								),
		('PLAYER_IS_SAKURA_EMPIRE_LEADER',						'REQUIRES_LEADER_AZUR_LANE_AYANAMI'						),
		('PLAYER_IS_SAKURA_EMPIRE_LEADER',						'REQUIRES_LEADER_AZUR_LANE_YUUDACHI'					),
		('PLAYER_IS_SAKURA_EMPIRE_LEADER',						'REQUIRES_LEADER_AZUR_LANE_SHIGURE'						),
		('PLAYER_IS_SAKURA_EMPIRE_LEADER',						'REQUIRES_LEADER_AZUR_LANE_YUKIKAZE'					),
		('CITY_HAS_GOVERNOR_PROMOTION_SHOPKEEPER_KANBAN',		'REQUIRES_CITY_HAS_GOVERNOR_PROMOTION_SHOPKEEPER_KANBAN');

INSERT INTO Requirements (RequirementId, RequirementType)
VALUES	('REQUIRES_LEADER_AZUR_LANE_AYANAMI',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'),
		('REQUIRES_LEADER_AZUR_LANE_YUUDACHI',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'),
		('REQUIRES_LEADER_AZUR_LANE_SHIGURE',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'),
		('REQUIRES_LEADER_AZUR_LANE_YUKIKAZE',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'
),(
	'REQUIRES_CITY_HAS_GOVERNOR_PROMOTION_SHOPKEEPER_KANBAN',
	'REQUIREMENT_CITY_HAS_SPECIFIC_GOVERNOR_PROMOTION_TYPE'
);

INSERT INTO RequirementArguments (RequirementId, Name, Value)
VALUES	('REQUIRES_LEADER_AZUR_LANE_AYANAMI',	'LeaderType',	'LEADER_AZUR_LANE_AYANAMI'	),
		('REQUIRES_LEADER_AZUR_LANE_YUUDACHI',	'LeaderType',	'LEADER_AZUR_LANE_YUUDACHI'	),
		('REQUIRES_LEADER_AZUR_LANE_SHIGURE',	'LeaderType',	'LEADER_AZUR_LANE_SHIGURE'	),
		('REQUIRES_LEADER_AZUR_LANE_YUKIKAZE',	'LeaderType',	'LEADER_AZUR_LANE_YUKIKAZE'
),(
	'REQUIRES_CITY_HAS_GOVERNOR_PROMOTION_SHOPKEEPER_KANBAN',
	'GovernorPromotionType',
	'GOVERNOR_PROMOTION_SHOPKEEPER_KANBAN'
),(
	'REQUIRES_CITY_HAS_GOVERNOR_PROMOTION_SHOPKEEPER_KANBAN',
	'Established',
	1
);

--------------------------------------------------------------
INSERT OR IGNORE INTO NamedLakes (NamedLakeType, Name)
VALUES	('NAMED_LAKE_SENREN_BANKA1', 'LOC_NAMED_LAKE_SENREN_BANKA1'),
		('NAMED_LAKE_SENREN_BANKA2', 'LOC_NAMED_LAKE_SENREN_BANKA2'),
		('NAMED_LAKE_SENREN_BANKA3', 'LOC_NAMED_LAKE_SENREN_BANKA3'),
		('NAMED_LAKE_SENREN_BANKA4', 'LOC_NAMED_LAKE_SENREN_BANKA4'),
		('NAMED_LAKE_SENREN_BANKA5', 'LOC_NAMED_LAKE_SENREN_BANKA5'),
		('NAMED_LAKE_SENREN_BANKA6', 'LOC_NAMED_LAKE_SENREN_BANKA6');

INSERT INTO NamedLakeCivilizations (NamedLakeType, CivilizationType)
VALUES	('NAMED_LAKE_SENREN_BANKA1', 'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_LAKE_SENREN_BANKA2', 'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_LAKE_SENREN_BANKA3', 'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_LAKE_SENREN_BANKA4', 'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_LAKE_SENREN_BANKA5', 'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_LAKE_SENREN_BANKA6', 'CIVILIZATION_AZUR_LANE_SE');

INSERT INTO NamedLakeCivilizations (NamedLakeType, CivilizationType)
SELECT NamedLakeType, 'CIVILIZATION_AZUR_LANE_SE'
FROM NamedLakeCivilizations WHERE CivilizationType = 'CIVILIZATION_JAPAN';

INSERT OR IGNORE INTO NamedMountains (NamedMountainType, Name)
VALUES	('NAMED_MOUNTAIN_SENREN_BANKA1', 'LOC_NAMED_MOUNTAIN_SENREN_BANKA1'),
		('NAMED_MOUNTAIN_SENREN_BANKA2', 'LOC_NAMED_MOUNTAIN_SENREN_BANKA2'),
		('NAMED_MOUNTAIN_SENREN_BANKA3', 'LOC_NAMED_MOUNTAIN_SENREN_BANKA3'),
		('NAMED_MOUNTAIN_SENREN_BANKA4', 'LOC_NAMED_MOUNTAIN_SENREN_BANKA4');

INSERT INTO NamedMountainCivilizations (NamedMountainType, CivilizationType)
VALUES	('NAMED_MOUNTAIN_SENREN_BANKA1', 'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_MOUNTAIN_SENREN_BANKA2', 'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_MOUNTAIN_SENREN_BANKA3', 'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_MOUNTAIN_SENREN_BANKA4', 'CIVILIZATION_AZUR_LANE_SE');

INSERT INTO NamedMountainCivilizations (NamedMountainType, CivilizationType)
SELECT NamedMountainType, 'CIVILIZATION_AZUR_LANE_SE'
FROM NamedMountainCivilizations WHERE CivilizationType = 'CIVILIZATION_JAPAN';

INSERT INTO NamedOceans (NamedOceanType, Name)
VALUES ('NAMED_OCEAN_SAKURA_EMPIRE1', 'LOC_NAMED_OCEAN_SAKURA_EMPIRE1');

INSERT INTO NamedOceanCivilizations (NamedOceanType, CivilizationType)
VALUES ('NAMED_OCEAN_SAKURA_EMPIRE1', 'CIVILIZATION_AZUR_LANE_SE');

INSERT OR IGNORE INTO NamedRivers (NamedRiverType, Name)
VALUES	('NAMED_RIVER_SENREN_BANKA1', 'LOC_NAMED_RIVER_SENREN_BANKA1'),
		('NAMED_RIVER_SENREN_BANKA2', 'LOC_NAMED_RIVER_SENREN_BANKA2'),
		('NAMED_RIVER_SENREN_BANKA3', 'LOC_NAMED_RIVER_SENREN_BANKA3'),
		('NAMED_RIVER_SENREN_BANKA4', 'LOC_NAMED_RIVER_SENREN_BANKA4');

INSERT INTO NamedRiverCivilizations (NamedRiverType, CivilizationType)
VALUES	('NAMED_RIVER_SENREN_BANKA1', 'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_RIVER_SENREN_BANKA2', 'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_RIVER_SENREN_BANKA3', 'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_RIVER_SENREN_BANKA4', 'CIVILIZATION_AZUR_LANE_SE');

INSERT INTO NamedRiverCivilizations (NamedRiverType, CivilizationType)
SELECT NamedRiverType, 'CIVILIZATION_AZUR_LANE_SE'
FROM NamedRiverCivilizations WHERE CivilizationType = 'CIVILIZATION_JAPAN';

INSERT INTO NamedSeas (NamedSeaType, Name)
VALUES	('NAMED_SEA_SAKURA_EMPIRE1', 'LOC_NAMED_SEA_SAKURA_EMPIRE1'),
		('NAMED_SEA_SAKURA_EMPIRE2', 'LOC_NAMED_SEA_SAKURA_EMPIRE2'),
		('NAMED_SEA_SAKURA_EMPIRE3', 'LOC_NAMED_SEA_SAKURA_EMPIRE3');

INSERT INTO NamedSeaCivilizations (NamedSeaType, CivilizationType)
VALUES	('NAMED_SEA_SOLOMON_SEA',		'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_SEA_CORAL_SEA',			'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_SEA_MUTSU_BAY',			'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_SEA_PHILIPPINE_SEA',	'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_SEA_SAGAMI_BAY',		'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_SEA_SAKURA_EMPIRE1',	'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_SEA_SAKURA_EMPIRE2',	'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_SEA_SAKURA_EMPIRE3',	'CIVILIZATION_AZUR_LANE_SE');

INSERT OR IGNORE INTO NamedVolcanoes (NamedVolcanoType, Name)
VALUES	('NAMED_VOLCANO_SENREN_BANKA1', 'LOC_NAMED_VOLCANO_SENREN_BANKA1'),
		('NAMED_VOLCANO_SENREN_BANKA2', 'LOC_NAMED_VOLCANO_SENREN_BANKA2'),
		('NAMED_VOLCANO_SENREN_BANKA3', 'LOC_NAMED_VOLCANO_SENREN_BANKA3'),
		('NAMED_VOLCANO_SENREN_BANKA4', 'LOC_NAMED_VOLCANO_SENREN_BANKA4'),
		('NAMED_VOLCANO_SENREN_BANKA5', 'LOC_NAMED_VOLCANO_SENREN_BANKA5'),
		('NAMED_VOLCANO_SENREN_BANKA6', 'LOC_NAMED_VOLCANO_SENREN_BANKA6');

INSERT INTO NamedVolcanoCivilizations (NamedVolcanoType, CivilizationType)
VALUES	('NAMED_VOLCANO_SENREN_BANKA1', 'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_VOLCANO_SENREN_BANKA2', 'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_VOLCANO_SENREN_BANKA3', 'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_VOLCANO_SENREN_BANKA4', 'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_VOLCANO_SENREN_BANKA5', 'CIVILIZATION_AZUR_LANE_SE'),
		('NAMED_VOLCANO_SENREN_BANKA6', 'CIVILIZATION_AZUR_LANE_SE');

INSERT INTO NamedVolcanoCivilizations (NamedVolcanoType, CivilizationType)
SELECT NamedVolcanoType, 'CIVILIZATION_AZUR_LANE_SE'
FROM NamedVolcanoCivilizations WHERE CivilizationType = 'CIVILIZATION_JAPAN';