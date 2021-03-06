INSERT INTO Types (Type, Kind)
VALUES	('TRAIT_CIVILIZATION_UNIT_BULIN_MK1',	'KIND_TRAIT'	),
		('TRAIT_CIVILIZATION_UNIT_BULIN_MK2',	'KIND_TRAIT'	),
		('UNIT_BULIN_MK1',						'KIND_UNIT'		),
		('UNIT_BULIN_MK2',						'KIND_UNIT'		),
		('MODIFIER_PLAYER_ADJUST_EMBARK_BULIN',	'KIND_MODIFIER'	);

INSERT INTO Traits (TraitType, Name, Description)
VALUES (
	'TRAIT_CIVILIZATION_UNIT_BULIN_MK1',
	'LOC_UNIT_BULIN_MK1_NAME',
	'LOC_TRAIT_CIVILIZATION_UNIT_BULIN_MK1_DESCRIPTION'
),(
	'TRAIT_CIVILIZATION_UNIT_BULIN_MK2',
	'LOC_UNIT_BULIN_MK2_NAME',
	'LOC_TRAIT_CIVILIZATION_UNIT_BULIN_MK2_DESCRIPTION'
);

INSERT INTO UnitAiInfos (UnitType, AiType)
VALUES	('UNIT_BULIN_MK1',	'UNITAI_BUILD'			),
		('UNIT_BULIN_MK1',	'UNITTYPE_CIVILIAN'		),
		('UNIT_BULIN_MK2',	'UNITAI_BUILD'			),
		('UNIT_BULIN_MK2',	'UNITTYPE_CIVILIAN'		),
		('UNIT_BULIN_MK2',	'UNITTYPE_SIEGE_SUPPORT');

INSERT INTO UnitCaptures (CapturedUnitType, BecomesUnitType)
VALUES	('UNIT_BULIN_MK1',	'UNIT_BULIN_MK1'	);

INSERT INTO UnitReplaces (CivUniqueUnitType, ReplacesUnitType)
VALUES	('UNIT_BULIN_MK1',	'UNIT_BUILDER'			),
		('UNIT_BULIN_MK2',	'UNIT_MILITARY_ENGINEER');

INSERT INTO TypeTags (Type, Tag)
VALUES	('UNIT_BULIN_MK1',	'CLASS_BUILDER'		),
		('UNIT_BULIN_MK1',	'CLASS_LANDCIVILIAN'),
		('UNIT_BULIN_MK2',	'CLASS_SUPPORT'		);

INSERT INTO Units(
	UnitType,
	Name,
	Description,
	Cost,
	Maintenance,
	BaseMoves,
	BaseSightRange,
	ZoneOfControl,
	CanCapture,
	Domain,
	FormationClass,
	PromotionClass,
	AdvisorType,
	CostProgressionModel,
	CostProgressionParam1,
	PurchaseYield,
	BuildCharges,
	CanTrain,
	PrereqTech,
	TraitType
) VALUES (
	/* Type   */ 'UNIT_BULIN_MK1',
	/* Name   */ 'LOC_UNIT_BULIN_MK1_NAME',
	/* Dscrpt */ 'LOC_UNIT_BULIN_MK1_DESCRIPTION',
	/* Cost   */ 50, 0, 2, 2, 0, 0,
	/* Domain */ 'DOMAIN_LAND',
	/* Format */ 'FORMATION_CLASS_CIVILIAN',
	/* Promot */ NULL,
	/* Advisr */ 'ADVISOR_GENERIC',
	/* PModel */ 'COST_PROGRESSION_PREVIOUS_COPIES',
	/* PParam */ 4,
	/* Yield  */ 'YIELD_GOLD',
	/* Charge */ 3, 0,
	/* Prereq */ NULL,
	/* Trait  */ 'TRAIT_CIVILIZATION_UNIT_BULIN_MK1'
),(
	/* Type   */ 'UNIT_BULIN_MK2',
	/* Name   */ 'LOC_UNIT_BULIN_MK2_NAME',
	/* Dscrpt */ 'LOC_UNIT_BULIN_MK2_DESCRIPTION',
	/* Cost   */ 300, 2, 2, 2, 0, 0,
	/* Domain */ 'DOMAIN_LAND',
	/* Format */ 'FORMATION_CLASS_SUPPORT',
	/* Promot */ 'PROMOTION_CLASS_SUPPORT',
	/* Advisr */ 'ADVISOR_CONQUEST',
	/* PModel */ 'NO_COST_PROGRESSION',
	/* PParam */ 0,
	/* Yield  */ 'YIELD_GOLD',
	/* Charge */ 5, 0,
	/* Prereq */ 'TECH_MILITARY_ENGINEERING',
	/* Trait  */ 'TRAIT_CIVILIZATION_UNIT_BULIN_MK2'
);

/*UPDATE Civics SET EmbarkUnitType = 'UNIT_BULIN_MK1'
WHERE CivicType = 'CIVIC_CODE_OF_LAWS';

UPDATE Civics SET EmbarkUnitType = 'UNIT_BULIN_MK2'
WHERE CivicType = 'CIVIC_FOREIGN_TRADE' OR CivicType = 'CIVIC_CRAFTSMANSHIP';*/

INSERT INTO Improvement_ValidBuildUnits (ImprovementType, UnitType)
SELECT	ImprovementType, 'UNIT_BULIN_MK1'
FROM	Improvement_ValidBuildUnits
WHERE	UnitType = 'UNIT_BUILDER';

INSERT INTO Improvement_ValidBuildUnits (ImprovementType, UnitType)
SELECT	ImprovementType, 'UNIT_BULIN_MK2'
FROM	Improvement_ValidBuildUnits
WHERE	UnitType = 'UNIT_BUILDER' OR UnitType = 'UNIT_MILITARY_ENGINEER';

INSERT INTO District_BuildChargeProductions (DistrictType, UnitType, PercentProductionPerCharge)
SELECT	DistrictType, 'UNIT_BULIN_MK2', PercentProductionPerCharge
FROM	District_BuildChargeProductions
WHERE	UnitType = 'UNIT_MILITARY_ENGINEER';

INSERT INTO Building_BuildChargeProductions (BuildingType, UnitType, PercentProductionPerCharge)
SELECT	BuildingType, 'UNIT_BULIN_MK2', PercentProductionPerCharge
FROM	Building_BuildChargeProductions
WHERE	UnitType = 'UNIT_MILITARY_ENGINEER';

INSERT INTO Route_ValidBuildUnits (RouteType, UnitType)
SELECT	RouteType, 'UNIT_BULIN_MK2'
FROM	Route_ValidBuildUnits
WHERE	UnitType = 'UNIT_MILITARY_ENGINEER';

INSERT INTO MomentIllustrations (MomentIllustrationType, MomentDataType, GameDataType, Texture)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', 'UNIT_BULIN_MK1', 'MOMENT_UNIT_BULIN_MK1'),
		('MOMENT_ILLUSTRATION_UNIQUE_UNIT', 'MOMENT_DATA_UNIT', 'UNIT_BULIN_MK2', 'MOMENT_UNIT_BULIN_MK2');

--------------------------------------------------------------
INSERT INTO TraitModifiers (TraitType, ModifierId)
VALUES	('TRAIT_CIVILIZATION_UNIT_BULIN_MK1',	'TRAIT_BULIN_MK1_EARLY_EMBARK'),
		('TRAIT_CIVILIZATION_UNIT_BULIN_MK2',	'TRAIT_BULIN_MK2_EARLY_EMBARK');

INSERT INTO DynamicModifiers (ModifierType, CollectionType, EffectType)
VALUES	('MODIFIER_PLAYER_ADJUST_EMBARK_BULIN',	'COLLECTION_OWNER',	'EFFECT_ADJUST_PLAYER_EMBARK_UNIT_PASS');

INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId)
VALUES	('TRAIT_BULIN_MK1_EARLY_EMBARK',	'MODIFIER_PLAYER_ADJUST_EMBARK_BULIN',	'BULIN_OWNER_HAS_SAILING'),
		('TRAIT_BULIN_MK2_EARLY_EMBARK',	'MODIFIER_PLAYER_ADJUST_EMBARK_BULIN',	'BULIN_OWNER_HAS_SAILING');

INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES	('TRAIT_BULIN_MK1_EARLY_EMBARK',	'UnitType',	'UNIT_BULIN_MK1'),
		('TRAIT_BULIN_MK2_EARLY_EMBARK',	'UnitType',	'UNIT_BULIN_MK2');

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
VALUES ('BULIN_OWNER_HAS_SAILING', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
VALUES ('BULIN_OWNER_HAS_SAILING', 'REQUIRES_BULIN_OWNER_HAS_SAILING');

INSERT INTO Requirements (RequirementId, RequirementType)
VALUES ('REQUIRES_BULIN_OWNER_HAS_SAILING', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT INTO RequirementArguments (RequirementId, Name, Value)
VALUES ('REQUIRES_BULIN_OWNER_HAS_SAILING', 'TechnologyType', 'TECH_SAILING');