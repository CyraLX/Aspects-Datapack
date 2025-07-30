# If eyes are in water, count as submerged
execute anchored eyes positioned ^ ^ ^ if predicate {condition:"minecraft:location_check",predicate:{fluid:{fluids:"#minecraft:water"}}} run return run scoreboard players set @s aspectlib.is_submerged 1
# Otherwise, don't
scoreboard players reset @s aspectlib.is_submerged
