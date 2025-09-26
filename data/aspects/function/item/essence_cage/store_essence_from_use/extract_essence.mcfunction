function aspects:item/essence_cage/store_essence_from_use/raycast/start
playsound minecraft:particle.soul_escape player @a[distance=..16] ~ ~ ~ 10 2 1
scoreboard players set @s aspects.essence.exhausted 1
execute if entity @p[tag=aspects.essence_cage.extractor.use.origin,distance=..5, predicate= aspects:item/essence_cage/is_held_any] run function aspects:item/essence_cage/store_essence_from_use/give_essence

