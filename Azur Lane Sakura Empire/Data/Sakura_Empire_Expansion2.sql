UPDATE Traits SET Description = Description || '_GS'
WHERE	TraitType = 'TRAIT_CIVILIZATION_DISTRICT_SAKURA_EMPIRE_JINJA'
OR		TraitType = 'TRAIT_LEADER_SASEBO_NO_SHIGURE'
OR		TraitType = 'TRAIT_LEADER_KURE_NO_YUKIKAZE';

INSERT INTO TraitModifiers (TraitType, ModifierId)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_SAKURA_EMPIRE_JINJA',	'SAKURA_EMPIRE_JINJA_VOLCANIC_FAITH_BONUS'			),
		('TRAIT_CIVILIZATION_DISTRICT_SAKURA_EMPIRE_JINJA',	'SAKURA_EMPIRE_JINJA_GEOTHERMAL_FAITH_BONUS'		),
		('TRAIT_LEADER_SASEBO_NO_SHIGURE',					'TRAIT_SHIGURE_YUKIKAZE_PREVENET_STRUCTURAL_DAMAGE'	),
		('TRAIT_LEADER_KURE_NO_YUKIKAZE',					'TRAIT_SHIGURE_YUKIKAZE_PREVENET_STRUCTURAL_DAMAGE'	);

INSERT INTO Building_TourismBombs_XP2 (BuildingType, TourismBombValue)
VALUES ('BUILDING_KAIGUN_KOSHO', 750);

INSERT INTO BuildingModifiers (BuildingType, ModifierId)
VALUES ('BUILDING_KAIGUN_KOSHO', 'SHIPYARD_UNIMPROVED_COAST_PRODUCTION');

UPDATE Districts SET Description = Description || '_GS'
WHERE DistrictType = 'DISTRICT_SAKURA_EMPIRE_JINJA';

INSERT INTO GovernorPromotionModifiers (GovernorPromotionType, ModifierId)
VALUES ('GOVERNOR_PROMOTION_EQUIPMENT_SUPPLY', 'EQUIPMENT_SUPPLY_RESOURCE_DISCOUNT');

UPDATE Modifiers SET ModifierType = 'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION'
WHERE ModifierId LIKE 'SHIPYARD_EXPANSION_HARBOR_OIL%';

--------------------------------------------------------------
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
	'TRAIT_SHIGURE_YUKIKAZE_PREVENET_STRUCTURAL_DAMAGE',
	'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',
	NULL
),(
	'EQUIPMENT_SUPPLY_RESOURCE_DISCOUNT',
	'MODIFIER_PLAYER_ADJUST_UNIT_UPGRADE_RESOURCE_COST_MODIFIER',
	NULL
);

INSERT INTO ModifierArguments (ModifierId, Name, Value)
VALUES	('SAKURA_EMPIRE_JINJA_VOLCANIC_FAITH_BONUS',	'Amount',		3				),
		('SAKURA_EMPIRE_JINJA_VOLCANIC_FAITH_BONUS',	'YieldType',	'YIELD_FAITH'	),
		('SAKURA_EMPIRE_JINJA_GEOTHERMAL_FAITH_BONUS',	'Amount',		3				),
		('SAKURA_EMPIRE_JINJA_GEOTHERMAL_FAITH_BONUS',	'YieldType',	'YIELD_FAITH'	),
		('EQUIPMENT_SUPPLY_RESOURCE_DISCOUNT',			'Amount',		25
),(
	'TRAIT_SHIGURE_YUKIKAZE_PREVENET_STRUCTURAL_DAMAGE',
	'ModifierId',
	'MODIFIER_GOVERNOR_ADJUST_PREVENET_STRUCTURAL_DAMAGE'
);

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)
VALUES	('PLOT_ADJACENT_SAKURA_JINJA_HAS_VOLCANIC_SOIL',		'REQUIREMENTSET_TEST_ALL'),
		('PLOT_ADJACENT_SAKURA_JINJA_HAS_GEOTHERMAL_FIISSURE',	'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)
VALUES	('PLOT_ADJACENT_SAKURA_JINJA_HAS_VOLCANIC_SOIL',		'REQUIRES_PLOT_HAS_VOLCANIC_SOIL'				),
		('PLOT_ADJACENT_SAKURA_JINJA_HAS_VOLCANIC_SOIL',		'REQUIRES_PLOT_ADJACENT_TO_SAKURA_EMPIRE_JINJA'	),
		('PLOT_ADJACENT_SAKURA_JINJA_HAS_GEOTHERMAL_FIISSURE',	'REQUIRES_PLOT_HAS_GEOTHERMAL_FIISSURE'			),
		('PLOT_ADJACENT_SAKURA_JINJA_HAS_GEOTHERMAL_FIISSURE',	'REQUIRES_PLOT_ADJACENT_TO_SAKURA_EMPIRE_JINJA'	);