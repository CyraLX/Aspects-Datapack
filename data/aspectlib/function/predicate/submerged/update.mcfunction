# Reset scores
scoreboard players reset @s aspectlib.is_submerged
scoreboard players reset @s aspectlib.is_submerged_water
scoreboard players reset @s aspectlib.is_submerged_lava

# If eyes in any liquid, set aspectlib.is_submerged to true
execute anchored eyes positioned ^ ^ ^ unless predicate {condition:"minecraft:location_check",predicate:{fluid:{fluids:"minecraft:empty"}}} run scoreboard players set @s aspectlib.is_submerged 1
# If eyes in water, set aspectlib.is_submerged_water to true
execute anchored eyes positioned ^ ^ ^ if predicate {condition:"minecraft:location_check",predicate:{fluid:{fluids:"#minecraft:water"}}} run return run scoreboard players set @s aspectlib.is_submerged_water 1
# If eyes in lava, set aspectlib.is_submerged_lava to true
execute anchored eyes positioned ^ ^ ^ if predicate {condition:"minecraft:location_check",predicate:{fluid:{fluids:"#minecraft:lava"}}} run return run scoreboard players set @s aspectlib.is_submerged_lava 1
