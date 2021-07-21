INSERT INTO Types (Type, Kind)
VALUES	('TRAIT_CIVILIZATION_UNIT_BULIN_MK1',	'KIND_TRAIT'),
		('TRAIT_CIVILIZATION_UNIT_BULIN_MK2',	'KIND_TRAIT'),
		('UNIT_BULIN_MK1',						'KIND_UNIT'	),
		('UNIT_BULIN_MK2',						'KIND_UNIT'	);

INSERT INTO Traits (TraitType, Name, Description)
VALUES	('TRAIT_CIVILIZATION_UNIT_BULIN_MK1', 'LOC_UNIT_BULIN_MK1_NAME', 'LOC_UNIT_BULIN_MK1_DESCRIPTION'),
		('TRAIT_CIVILIZATION_UNIT_BULIN_MK2', 'LOC_UNIT_BULIN_MK2_NAME', 'LOC_UNIT_BULIN_MK2_DESCRIPTION');

INSERT INTO UnitAiInfos (UnitType, AiType)
VALUES	('UNIT_BULIN_MK1',	'UNITAI_BUILD'			),
		('UNIT_BULIN_MK1',	'UNITTYPE_CIVILIAN'		),
		('UNIT_BULIN_MK2',	'UNITAI_BUILD'			),
		('UNIT_BULIN_MK2',	'UNITTYPE_CIVILIAN'		),
		('UNIT_BULIN_MK2',	'UNITTYPE_SIEGE_SUPPORT');

INSERT INTO UnitCaptures (CapturedUnitType, BecomesUnitType)
VALUES	('UNIT_BULIN_MK1',	'UNIT_BULIN_MK1');

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
	PrereqTech,
	TraitType
) VALUES (
	/* Type   */ 'UNIT_BULIN_MK1',
	/* Name   */ 'LOC_UNIT_BULIN_MK1_NAME',
	/* Dscrpt */ 'LOC_UNIT_BULIN_MK1_DESCRIPTION',
	/* Cost   */ 1/*50*/, 0, 2, 2, 0, 0,
	/* Domain */ 'DOMAIN_LAND',
	/* Format */ 'FORMATION_CLASS_CIVILIAN',
	/* Promot */ NULL,
	/* Advisr */ 'ADVISOR_GENERIC',
	/* PModel */ 'COST_PROGRESSION_PREVIOUS_COPIES',
	/* PParam */ 4,
	/* Yield  */ 'YIELD_GOLD',
	/* Charge */ 3,
	/* Prereq */ NULL,
	/* Trait  */ 'TRAIT_CIVILIZATION_UNIT_BULIN_MK1'
),(
	/* Type   */ 'UNIT_BULIN_MK2',
	/* Name   */ 'LOC_UNIT_BULIN_MK2_NAME',
	/* Dscrpt */ 'LOC_UNIT_BULIN_MK2_DESCRIPTION',
	/* Cost   */ 1/*170*/, 2, 2, 2, 0, 0,
	/* Domain */ 'DOMAIN_LAND',
	/* Format */ 'FORMATION_CLASS_SUPPORT',
	/* Promot */ 'PROMOTION_CLASS_SUPPORT',
	/* Advisr */ 'ADVISOR_CONQUEST',
	/* PModel */ 'NO_COST_PROGRESSION',
	/* PParam */ 0,
	/* Yield  */ 'YIELD_GOLD',
	/* Charge */ 2,
	/* Prereq */ 'TECH_MILITARY_ENGINEERING',
	/* Trait  */ 'TRAIT_CIVILIZATION_UNIT_BULIN_MK2'
);

INSERT INTO Improvement_ValidBuildUnits (ImprovementType, UnitType)
SELECT	ImprovementType, 'UNIT_BULIN_MK1'
FROM	Improvement_ValidBuildUnits
WHERE	UnitType = 'UNIT_BUILDER';

INSERT INTO Improvement_ValidBuildUnits (ImprovementType, UnitType)
SELECT	ImprovementType, 'UNIT_BULIN_MK2'
FROM	Improvement_ValidBuildUnits
WHERE	UnitType = 'UNIT_MILITARY_ENGINEER';