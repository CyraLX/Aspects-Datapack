function aspects:essence_cage/store_essence_from_use/raycast/start
playsound minecraft:particle.soul_escape player @a[distance=..16] ~ ~ ~ 10 2 1
scoreboard players set @s aspects.essence.exhausted 1
execute if entity @p[tag=aspects.essence_cage.extractor.use.origin,distance=..5, predicate=aspects:essence_cage/is_in_offhand] run return run function aspects:essence_cage/store_essence_from_use/give_essence_offhand
function aspects:essence_cage/store_essence_from_use/give_essence_mainhand

