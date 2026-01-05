execute if predicate aspects:aspect/rascal/light_level/exposed_to_sun run return run scoreboard players set @s aspects.rascal.movement_speed_target -30
execute unless predicate aspects:aspect/rascal/light_level/exposed_to_sun unless predicate aspects:aspect/rascal/light_level/is_dark run return run scoreboard players set @s aspects.rascal.movement_speed_target 0
execute if predicate aspects:aspect/rascal/light_level/is_dark run return run scoreboard players set @s aspects.rascal.movement_speed_target 40
