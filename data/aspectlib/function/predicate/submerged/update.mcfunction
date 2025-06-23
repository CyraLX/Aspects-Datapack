# If air scoreboard is not set for this player, default them
execute unless score @s aspectlib.submerged.air_current = @s aspectlib.submerged.air_current run scoreboard players set @s aspectlib.submerged.air_current 300
# Update current and last scores
scoreboard players operation @s aspectlib.submerged.air_last = @s aspectlib.submerged.air_current
scoreboard players operation @s aspectlib.submerged.air_current = @s aspectlib.submerged.air
# Continue only if air is less the max
execute if score @s aspectlib.submerged.air_current matches 300.. run return run scoreboard players set @s aspectlib.submerged.is_active 0
# If in a air restoring block, assume being submerged and return early
execute if block ^ ^ ^ #aspectlib:air_restoring run return run scoreboard players set @s aspectlib.submerged.is_active 1
# Clamp values to minimum of 0
execute if score @s aspectlib.submerged.air_last matches ..-1 run scoreboard players set @s aspectlib.submerged.air_last 0
execute if score @s aspectlib.submerged.air_current matches ..-1 run scoreboard players set @s aspectlib.submerged.air_current 0
# Update scoreboard if submerged and return
execute if score @s aspectlib.submerged.air_last >= @s aspectlib.submerged.air_current run return run scoreboard players set @s aspectlib.submerged.is_active 1
scoreboard players set @s aspectlib.submerged.is_active 0