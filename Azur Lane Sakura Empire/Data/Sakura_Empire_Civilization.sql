INSERT INTO Types (Type, Kind)
VALUES	('CIVILIZATION_AZUR_LANE_SE',						'KIND_CIVILIZATION'	),
		('TRAIT_CIVILIZATION_SAKURA_EMPIRE',				'KIND_TRAIT'		),
		('TRAIT_CIVILIZATION_BUILDING_KAIGUN_KOSHO',		'KIND_TRAIT'		),
		('TRAIT_CIVILIZATION_DISTRICT_SAKURA_EMPIRE_JINJA',	'KIND_TRAIT'		),
		('BUILDING_KAIGUN_KOSHO',							'KIND_BUILDING'		),
		('DISTRICT_SAKURA_EMPIRE_JINJA',					'KIND_DISTRICT'		);

INSERT INTO Civilizations(
	CivilizationType,
	Name,
	Description,
	Adjective,
	StartingCivilizationLevelType,
	Ethnicity,
	RandomCityNameDepth
) VALUES (
	'CIVILIZATION_AZUR_LANE_SE',
	'LOC_CIVILIZATION_AZUR_LANE_SE_NAME',
	'LOC_CIVILIZATION_AZUR_LANE_SE_DESCRIPTION',
	'LOC_CIVILIZATION_AZUR_LANE_SE_ADJECTIVE',
	'CIVILIZATION_LEVEL_FULL_CIV',
	'ETHNICITY_ASIAN',
	10
);

INSERT INTO CivilizationTraits (CivilizationType, TraitType)
VALUES	('CIVILIZATION_AZUR_LANE_SE',	'TRAIT_CIVILIZATION_SAKURA_EMPIRE'					),
		('CIVILIZATION_AZUR_LANE_SE',	'TRAIT_CIVILIZATION_BUILDING_KAIGUN_KOSHO'			),
		('CIVILIZATION_AZUR_LANE_SE',	'TRAIT_CIVILIZATION_DISTRICT_SAKURA_EMPIRE_JINJA'	);

INSERT INTO Traits (TraitType, Name, Description)
VALUES (
	'TRAIT_CIVILIZATION_SAKURA_EMPIRE',
	'LOC_TRAIT_CIVILIZATION_SAKURA_EMPIRE_NAME',
	'LOC_TRAIT_CIVILIZATION_SAKURA_EMPIRE_DESCRIPTION'
),(
	'TRAIT_CIVILIZATION_BUILDING_KAIGUN_KOSHO',
	'LOC_BUILDING_KAIGUN_KOSHO_NAME',
	'LOC_BUILDING_KAIGUN_KOSHO_DESCRIPTION'
),(
	'TRAIT_CIVILIZATION_DISTRICT_SAKURA_EMPIRE_JINJA',
	'LOC_DISTRICT_SAKURA_EMPIRE_JINJA_NAME',
	'LOC_DISTRICT_SAKURA_EMPIRE_JINJA_DESCRIPTION'
);

INSERT INTO TraitModifiers (TraitType, ModifierId)
VALUES	('TRAIT_CIVILIZATION_SAKURA_EMPIRE',				'SAKURA_EMPIRE_FAITH_PURCHASE_NAVAL1'		),
		('TRAIT_CIVILIZATION_SAKURA_EMPIRE',				'SAKURA_EMPIRE_FAITH_PURCHASE_NAVAL2'		),
		('TRAIT_CIVILIZATION_SAKURA_EMPIRE',				'SAKURA_EMPIRE_FAITH_PURCHASE_NAVAL3'		),
		('TRAIT_CIVILIZATION_SAKURA_EMPIRE',				'SAKURA_EMPIRE_FAITH_PURCHASE_NAVAL4'		),
		('TRAIT_CIVILIZATION_SAKURA_EMPIRE',				'SAKURA_EMPIRE_SURPRISE_WAR_MOVEMENT_BUFF'	),
		('TRAIT_CIVILIZATION_SAKURA_EMPIRE',				'SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_1'	),
		('TRAIT_CIVILIZATION_SAKURA_EMPIRE',				'SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_2'	),
		('TRAIT_CIVILIZATION_SAKURA_EMPIRE',				'SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_3'	),
		('TRAIT_CIVILIZATION_SAKURA_EMPIRE',				'SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_4'	),
		('TRAIT_CIVILIZATION_SAKURA_EMPIRE',				'SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_5'	),
		('TRAIT_CIVILIZATION_SAKURA_EMPIRE',				'SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_6'	),
		('TRAIT_CIVILIZATION_SAKURA_EMPIRE',				'SAKURA_EMPIRE_COASTAL_BONUS_AMENITIES'		),
		('TRAIT_CIVILIZATION_SAKURA_EMPIRE',				'SAKURA_EMPIRE_COASTAL_BONUS_GROWTH'		),
		('TRAIT_CIVILIZATION_BUILDING_KAIGUN_KOSHO',		'KAIGUN_KOSHO_NAVAL_UNIT_HEAL'				),
		('TRAIT_CIVILIZATION_DISTRICT_SAKURA_EMPIRE_JINJA',	'SAKURA_EMPIRE_JINJA_HOUSING_BONUS'			),
		('TRAIT_CIVILIZATION_DISTRICT_SAKURA_EMPIRE_JINJA',	'SAKURA_EMPIRE_JINJA_LAKE_FAITH_BONUS'		),
		('TRAIT_CIVILIZATION_DISTRICT_SAKURA_EMPIRE_JINJA',	'SAKURA_EMPIRE_JINJA_COAST_FAITH_BONUS'		);

--------------------------------------------------------------
INSERT INTO BuildingReplaces (CivUniqueBuildingType, ReplacesBuildingType)
VALUES ('BUILDING_KAIGUN_KOSHO', 'BUILDING_SHIPYARD');

INSERT INTO Buildings(
	BuildingType,
	Name,
	Description,
	PrereqTech,
	PrereqDistrict,
	PurchaseYield,
	Cost,
	AdvisorType,
	Maintenance,
	Housing,
	Entertainment,
	CitizenSlots,
	TraitType
) SELECT
	'BUILDING_KAIGUN_KOSHO',
	'LOC_BUILDING_KAIGUN_KOSHO_NAME',
	'LOC_BUILDING_KAIGUN_KOSHO_DESCRIPTION',
	PrereqTech, PrereqDistrict, PurchaseYield, Cost, AdvisorType, Maintenance,
	2, 1, 2,
	'TRAIT_CIVILIZATION_BUILDING_KAIGUN_KOSHO'
FROM Buildings
WHERE BuildingType = 'BUILDING_SHIPYARD';

INSERT INTO BuildingPrereqs (Building, PrereqBuilding)
VALUES ('BUILDING_KAIGUN_KOSHO', 'BUILDING_LIGHTHOUSE');

INSERT INTO Building_GreatPersonPoints (BuildingType, GreatPersonClassType, PointsPerTurn)
VALUES ('BUILDING_KAIGUN_KOSHO', 'GREAT_PERSON_CLASS_ADMIRAL', 1);

INSERT INTO Building_YieldDistrictCopies (BuildingType, OldYieldType, NewYieldType)
VALUES ('BUILDING_KAIGUN_KOSHO', 'YIELD_GOLD', 'YIELD_PRODUCTION');

INSERT INTO BuildingModifiers (BuildingType, ModifierId)
VALUES	('BUILDING_KAIGUN_KOSHO',	'SHIPYARD_TRAINED_UNIT_XP_MODIFIER'	),
		('BUILDING_KAIGUN_KOSHO',	'KAIGUN_KOSHO_NAVAL_UNIT_COMBAT'	);

--------------------------------------------------------------
INSERT INTO DistrictReplaces (CivUniqueDistrictType, ReplacesDistrictType)
VALUES ('DISTRICT_SAKURA_EMPIRE_JINJA', 'DISTRICT_HOLY_SITE');

INSERT INTO Districts(
	DistrictType,
	Name,
	Description,
	PrereqTech,
	PlunderType,
	PlunderAmount,
	AdvisorType,
	Maintenance,
	RequiresPlacement,
	RequiresPopulation,
	AllowsHolyCity,
	Aqueduct,
	NoAdjacentCity,
	InternalOnly,
	Cost,
	CostProgressionModel,
	CostProgressionParam1,
	MilitaryDomain,
	ZOC,
	CaptureRemovesBuildings,
	CaptureRemovesCityDefenses,
	CityStrengthModifier,
	Appeal,
	TraitType
) SELECT
	'DISTRICT_SAKURA_EMPIRE_JINJA',
	'LOC_DISTRICT_SAKURA_EMPIRE_JINJA_NAME',
	'LOC_DISTRICT_SAKURA_EMPIRE_JINJA_DESCRIPTION',
	PrereqTech, PlunderType, PlunderAmount, AdvisorType,
	1, 1, 1, 1, 0, 0, 0, 27,
	CostProgressionModel, CostProgressionParam1, MilitaryDomain,
	0, 0, 0, 2, 2,
	'TRAIT_CIVILIZATION_DISTRICT_SAKURA_EMPIRE_JINJA'
FROM Districts
WHERE DistrictType = 'DISTRICT_HOLY_SITE';

INSERT INTO District_Adjacencies (DistrictType, YieldChangeId)
SELECT	'DISTRICT_SAKURA_EMPIRE_JINJA', YieldChangeId
FROM	District_Adjacencies
WHERE	DistrictType = 'DISTRICT_HOLY_SITE';

INSERT INTO District_GreatPersonPoints (DistrictType, GreatPersonClassType, PointsPerTurn)
VALUES ('DISTRICT_SAKURA_EMPIRE_JINJA', 'GREAT_PERSON_CLASS_PROPHET', 2);

INSERT INTO District_TradeRouteYields(
	DistrictType,
	YieldType,
	YieldChangeAsOrigin,
	YieldChangeAsDomesticDestination,
	YieldChangeAsInternationalDestination
) VALUES
	('DISTRICT_SAKURA_EMPIRE_JINJA',	'YIELD_FOOD',	0, 1, 0),
	('DISTRICT_SAKURA_EMPIRE_JINJA',	'YIELD_FAITH',	0, 0, 1);

INSERT INTO District_CitizenYieldChanges (DistrictType, YieldType, YieldChange)
VALUES ('DISTRICT_SAKURA_EMPIRE_JINJA', 'YIELD_FAITH', 2);

INSERT INTO DistrictModifiers (DistrictType, ModifierId)
VALUES ('DISTRICT_SAKURA_EMPIRE_JINJA', 'SAKURA_EMPIRE_JINJA_CULTURE_ADJACENCY');

--------------------------------------------------------------
INSERT INTO Modifiers (ModifierId, ModifierType)
VALUES	('SAKURA_EMPIRE_FAITH_PURCHASE_NAVAL1',			'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE'	),
		('SAKURA_EMPIRE_FAITH_PURCHASE_NAVAL2',			'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE'	),
		('SAKURA_EMPIRE_FAITH_PURCHASE_NAVAL3',			'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE'	),
		('SAKURA_EMPIRE_FAITH_PURCHASE_NAVAL4',			'MODIFIER_PLAYER_CITIES_ENABLE_UNIT_FAITH_PURCHASE'	),
		('SAKURA_EMPIRE_SURPRISE_WAR_MOVEMENT_BUFF',	'MODIFIER_PLAYER_ADD_DIPLOMATIC_MOVEMENT_MODIFIER'	),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_1',	'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY'			),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_2',	'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY'			),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_3',	'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY'			),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_4',	'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY'			),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_5',	'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY'			),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_6',	'MODIFIER_PLAYER_CITIES_TERRAIN_ADJACENCY'			);

INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId, SubjectStackLimit)
VALUES (
	'SAKURA_EMPIRE_COASTAL_BONUS_AMENITIES',
	'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_AMENITY',
	'CITY_IS_COASTAL_OR_HAS_KAIGUN_KOSHO', NULL
),(
	'SAKURA_EMPIRE_COASTAL_BONUS_GROWTH',
	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_GROWTH',
	'CITY_IS_COASTAL_OR_HAS_KAIGUN_KOSHO', NULL
),(
	'KAIGUN_KOSHO_NAVAL_UNIT_HEAL',
	'MODIFIER_PLAYER_UNITS_ADJUST_HEAL_PER_TURN',
	'NAVAL_UNIT_IS_ADJACENT_TO_KAIGUN_KOSHO', NULL
),(
	'KAIGUN_KOSHO_NAVAL_UNIT_COMBAT',
	'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',
	'SAKURA_EMPIRE_UNIT_IS_NAVAL', NULL
),(
	'KAIGUN_KOSHO_NAVAL_COMBAT_MODIFIER',
	'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH',
	NULL, 7
),(
	'SAKURA_EMPIRE_JINJA_HOUSING_BONUS',
	'MODIFIER_PLAYER_DISTRICTS_ADJUST_HOUSING',
	'DISTRICT_IS_SAKURA_EMPIRE_JINJA', NULL
),(
	'SAKURA_EMPIRE_JINJA_CULTURE_ADJACENCY',
	'MODIFIER_PLAYER_DISTRICT_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',
	NULL, NULL
),(
	'SAKURA_EMPIRE_JINJA_LAKE_FAITH_BONUS',
	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',
	'PLOT_ADJACENT_SAKURA_JINJA_IS_LAKE', NULL
),(
	'SAKURA_EMPIRE_JINJA_COAST_FAITH_BONUS',
	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',
	'PLOT_ADJACENT_SAKURA_JINJA_IS_COAST', NULL
);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES	('SAKURA_EMPIRE_FAITH_PURCHASE_NAVAL1',			'Tag',							'CLASS_NAVAL_MELEE'			),
		('SAKURA_EMPIRE_FAITH_PURCHASE_NAVAL2',			'Tag',							'CLASS_NAVAL_RANGED'		),
		('SAKURA_EMPIRE_FAITH_PURCHASE_NAVAL3',			'Tag',							'CLASS_NAVAL_RAIDER'		),
		('SAKURA_EMPIRE_FAITH_PURCHASE_NAVAL4',			'Tag',							'CLASS_NAVAL_CARRIER'		),
		('SAKURA_EMPIRE_SURPRISE_WAR_MOVEMENT_BUFF',	'TurnsActive',					10							),
		('SAKURA_EMPIRE_SURPRISE_WAR_MOVEMENT_BUFF',	'Amount',						1							),
		('SAKURA_EMPIRE_SURPRISE_WAR_MOVEMENT_BUFF',	'DiplomaticYieldSource',		'SURPRISE_WAR_INITIATED'	),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_1',	'DistrictType',			'DISTRICT_CAMPUS'					),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_1',	'TerrainType',			'TERRAIN_COAST'						),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_1',	'YieldType',			'YIELD_SCIENCE'						),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_1',	'Amount',				1									),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_1',	'Description',			'LOC_ALSE_DISTRICT_COAST_SCIENCE'	),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_2',	'DistrictType',			'DISTRICT_SAKURA_EMPIRE_JINJA'		),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_2',	'TerrainType',			'TERRAIN_COAST'						),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_2',	'YieldType',			'YIELD_FAITH'						),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_2',	'Amount',				1									),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_2',	'Description',			'LOC_ALSE_DISTRICT_COAST_FAITH'		),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_3',	'DistrictType',			'DISTRICT_COMMERCIAL_HUB'			),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_3',	'TerrainType',			'TERRAIN_COAST'						),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_3',	'YieldType',			'YIELD_GOLD'						),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_3',	'Amount',				1									),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_3',	'Description',			'LOC_ALSE_DISTRICT_COAST_GOLD'		),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_4',	'DistrictType',			'DISTRICT_HARBOR'					),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_4',	'TerrainType',			'TERRAIN_COAST'						),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_4',	'YieldType',			'YIELD_PRODUCTION'					),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_4',	'Amount',				1									),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_4',	'Description',			'LOC_ALSE_DISTRICT_COAST_PRODUCTION'),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_5',	'DistrictType',			'DISTRICT_THEATER'					),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_5',	'TerrainType',			'TERRAIN_COAST'						),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_5',	'YieldType',			'YIELD_CULTURE'						),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_5',	'Amount',				1									),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_5',	'Description',			'LOC_ALSE_DISTRICT_COAST_CULTURE'	),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_6',	'DistrictType',			'DISTRICT_INDUSTRIAL_ZONE'			),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_6',	'TerrainType',			'TERRAIN_COAST'						),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_6',	'YieldType',			'YIELD_PRODUCTION'					),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_6',	'Amount',				1									),
		('SAKURA_EMPIRE_DISTRICT_COAST_ADJACENCY_6',	'Description',			'LOC_ALSE_DISTRICT_COAST_PRODUCTION'),
		('SAKURA_EMPIRE_COASTAL_BONUS_AMENITIES',		'Amount',				1									),
		('SAKURA_EMPIRE_COASTAL_BONUS_GROWTH',			'Amount',				15									),
		('KAIGUN_KOSHO_NAVAL_UNIT_HEAL',				'Amount',				15									),
		('KAIGUN_KOSHO_NAVAL_UNIT_HEAL',				'Type',					'ALL'								),
		('KAIGUN_KOSHO_NAVAL_UNIT_COMBAT',				'ModifierId',			'KAIGUN_KOSHO_NAVAL_COMBAT_MODIFIER'),
		('KAIGUN_KOSHO_NAVAL_COMBAT_MODIFIER',			'Amount',				1									),
		('SAKURA_EMPIRE_JINJA_HOUSING_BONUS',			'Amount',				1									),
		('SAKURA_EMPIRE_JINJA_CULTURE_ADJACENCY',		'YieldTypeToMirror',	'YIELD_FAITH'						),
		('SAKURA_EMPIRE_JINJA_CULTURE_ADJACENCY',		'YieldTypeToGrant',		'YIELD_CULTURE'						),
		('SAKURA_EMPIRE_JINJA_LAKE_FAITH_BONUS',		'Amount',				1									),
		('SAKURA_EMPIRE_JINJA_LAKE_FAITH_BONUS',		'YieldType',			'YIELD_FAITH'						),
		('SAKURA_EMPIRE_JINJA_COAST_FAITH_BONUS',		'Amount',				1									),
		('SAKURA_EMPIRE_JINJA_COAST_FAITH_BONUS',		'YieldType',			'YIELD_FAITH'						);

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
VALUES	('CITY_IS_COASTAL_OR_HAS_KAIGUN_KOSHO',		'REQUIREMENTSET_TEST_ANY'),
		('NAVAL_UNIT_IS_ADJACENT_TO_KAIGUN_KOSHO',	'REQUIREMENTSET_TEST_ALL'),
		('SAKURA_EMPIRE_UNIT_IS_NAVAL',				'REQUIREMENTSET_TEST_ALL'),
		('DISTRICT_IS_SAKURA_EMPIRE_JINJA',			'REQUIREMENTSET_TEST_ALL'),
		('PLOT_ADJACENT_SAKURA_JINJA_IS_LAKE',		'REQUIREMENTSET_TEST_ALL'),
		('PLOT_ADJACENT_SAKURA_JINJA_IS_COAST',		'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
VALUES	('CITY_IS_COASTAL_OR_HAS_KAIGUN_KOSHO',		'SAKURA_EMPIRE_PLOT_IS_COASTAL_LAND'			),
		('CITY_IS_COASTAL_OR_HAS_KAIGUN_KOSHO',		'REQUIRES_CITY_HAS_KAIGUN_KOSHO'				),
		('NAVAL_UNIT_IS_ADJACENT_TO_KAIGUN_KOSHO',	'REQUIRES_PLOT_ADJACENT_TO_KAIGUN_KOSHO'		),
		('NAVAL_UNIT_IS_ADJACENT_TO_KAIGUN_KOSHO',	'SAKURA_EMPIRE_UNIT_IS_NAVAL_REQUIREMENT'		),
		('SAKURA_EMPIRE_UNIT_IS_NAVAL',				'SAKURA_EMPIRE_UNIT_IS_NAVAL_REQUIREMENT'		),
		('DISTRICT_IS_SAKURA_EMPIRE_JINJA',			'REQUIRES_DISTRICT_IS_SAKURA_EMPIRE_JINJA'		),
		('PLOT_ADJACENT_SAKURA_JINJA_IS_LAKE',		'REQUIRES_PLOT_IS_LAKE'							),
		('PLOT_ADJACENT_SAKURA_JINJA_IS_LAKE',		'REQUIRES_PLOT_ADJACENT_TO_SAKURA_EMPIRE_JINJA'	),
		('PLOT_ADJACENT_SAKURA_JINJA_IS_COAST',		'REQUIRES_PLOT_IS_COAST'						),
		('PLOT_ADJACENT_SAKURA_JINJA_IS_COAST',		'REQUIRES_PLOT_ADJACENT_TO_SAKURA_EMPIRE_JINJA'	);

INSERT INTO Requirements (RequirementId, RequirementType)
VALUES	('SAKURA_EMPIRE_PLOT_IS_COASTAL_LAND',				'REQUIREMENT_PLOT_IS_COASTAL_LAND'					),
		('REQUIRES_CITY_HAS_KAIGUN_KOSHO',					'REQUIREMENT_CITY_HAS_BUILDING'						),
		('SAKURA_EMPIRE_UNIT_IS_NAVAL_REQUIREMENT',			'REQUIREMENT_UNIT_DOMAIN_MATCHES'					),
		('REQUIRES_PLOT_ADJACENT_TO_KAIGUN_KOSHO',			'REQUIREMENT_PLOT_ADJACENT_BUILDING_TYPE_MATCHES'	),
		('REQUIRES_DISTRICT_IS_SAKURA_EMPIRE_JINJA',		'REQUIREMENT_DISTRICT_TYPE_MATCHES'					),
		('REQUIRES_PLOT_ADJACENT_TO_SAKURA_EMPIRE_JINJA',	'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES'	);

INSERT INTO RequirementArguments (RequirementId, Name, Value)
VALUES	('REQUIRES_CITY_HAS_KAIGUN_KOSHO',					'BuildingType',		'BUILDING_KAIGUN_KOSHO'			),
		('SAKURA_EMPIRE_UNIT_IS_NAVAL_REQUIREMENT',			'UnitDomain',		'DOMAIN_SEA'					),
		('REQUIRES_PLOT_ADJACENT_TO_KAIGUN_KOSHO',			'BuildingType',		'BUILDING_KAIGUN_KOSHO'			),
		('REQUIRES_PLOT_ADJACENT_TO_KAIGUN_KOSHO',			'MinRange',			0								),
		('REQUIRES_DISTRICT_IS_SAKURA_EMPIRE_JINJA',		'DistrictType',		'DISTRICT_SAKURA_EMPIRE_JINJA'	),
		('REQUIRES_PLOT_ADJACENT_TO_SAKURA_EMPIRE_JINJA',	'DistrictType',		'DISTRICT_SAKURA_EMPIRE_JINJA'	);

INSERT INTO ModifierStrings (ModifierId, Context, Text)
VALUES	('KAIGUN_KOSHO_NAVAL_COMBAT_MODIFIER', 'Preview', 'LOC_KAIGUN_KOSHO_NAVAL_COMBAT_DESCRIPTION');

--------------------------------------------------------------
INSERT INTO CityNames (CivilizationType, CityName)
VALUES	('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_1' ),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_2' ),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_3' ),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_4' ),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_5' ),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_6' ),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_7' ),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_8' ),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_9' ),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_10'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_11'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_12'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_13'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_14'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_15'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_16'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_17'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_18'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_19'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_20'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_21'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_22'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_23'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_24'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_25'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_26'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_27'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_28'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_29'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_30'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_31'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_32'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_33'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_34'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_35'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_36'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_37'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_38'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_39'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_40'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_41'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_42'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_43'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_44'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_45'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_46'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_47'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_48'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_49'),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITY_NAME_SAKURA_EMPIRE_50');

INSERT INTO CivilizationCitizenNames (CivilizationType, CitizenName, Female)
VALUES	('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_1',  1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_2',  1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_3',  1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_4',  1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_5',  1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_6',  1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_7',  1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_8',  1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_9',  1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_10', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_11', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_12', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_13', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_14', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_15', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_16', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_17', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_18', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_19', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_20', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_21', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_22', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_23', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_24', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_25', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_26', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_27', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_28', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_29', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_30', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_31', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_32', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_33', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_34', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_35', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_36', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_37', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_38', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_39', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_40', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_41', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_42', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_43', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_44', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_45', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_46', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_47', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_48', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_49', 1),
		('CIVILIZATION_AZUR_LANE_SE', 'LOC_CITIZEN_SAKURA_EMPIRE_50', 1);

INSERT INTO StartBiasTerrains (CivilizationType, TerrainType, Tier)
VALUES	('CIVILIZATION_AZUR_LANE_SE',	'TERRAIN_COAST',	1);

INSERT INTO StartBiasResources (CivilizationType, ResourceType, Tier)
VALUES	('CIVILIZATION_AZUR_LANE_SE',	'RESOURCE_COAL',	5),
		('CIVILIZATION_AZUR_LANE_SE',	'RESOURCE_OIL',		5);

INSERT INTO CivilizationInfo (CivilizationType, Header, Caption, SortIndex)
VALUES	('CIVILIZATION_AZUR_LANE_SE',	'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_ALSE_LOCATION',		10),
		('CIVILIZATION_AZUR_LANE_SE',	'LOC_CIVINFO_AL_FACTION',	'LOC_CIVINFO_ALSE_FACTION',			20),
		('CIVILIZATION_AZUR_LANE_SE',	'LOC_CIVINFO_AL_PREFIX',	'LOC_CIVINFO_ALSE_PREFIX',			30),
		('CIVILIZATION_AZUR_LANE_SE',	'LOC_CIVINFO_CAPITAL',		'LOC_CITY_NAME_SAKURA_EMPIRE_1',	40);