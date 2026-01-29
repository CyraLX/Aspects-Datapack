# Apply pre-summon effects
effect give @s minecraft:slowness 1 0 true
effect give @s minecraft:mining_fatigue 1 0 true

# Store target UUID, but not the focus user's
data remove storage aspectlib:dummy target_UUID
execute unless entity @s[tag=aspects.rotten.focus_user] run data modify storage aspectlib:dummy target_UUID set from entity @s UUID

# Summon
execute positioned ~2 ~ ~2 align xyz positioned ~.5 ~ ~.5 run function aspects:item/focus/rotten/used/summon
execute positioned ~2 ~ ~-2 align xyz positioned ~.5 ~ ~.5 run function aspects:item/focus/rotten/used/summon
execute positioned ~-2 ~ ~2 align xyz positioned ~.5 ~ ~.5 run function aspects:item/focus/rotten/used/summon
execute positioned ~-2 ~ ~-2 align xyz positioned ~.5 ~ ~.5 run function aspects:item/focus/rotten/used/summon

# Make target damage summons
# execute as @e[type=#aspects:aspect/rotten/summons,type=!#aspects:aspect/rotten/summon_target_does_not_damage,distance=..16] at @s run damage @s 0.0001 minecraft:player_attack by @n[tag=aspects.rotten.summon_target,distance=..16]

# Cleanup
## Remove summon tags
tag @e[type=#aspects:aspect/rotten/summons,tag=aspects.rotten.summoned_temp,distance=..16] remove aspects.rotten.summoned_temp
