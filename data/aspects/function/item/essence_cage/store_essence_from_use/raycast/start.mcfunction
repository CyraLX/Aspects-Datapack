tag @s add raycaster
scoreboard players set .raycastLimit aspects.essence_cage.extractor.raycast 1000
execute anchored eyes facing entity @p[tag=aspects.essence_cage.extractor.use.origin, distance=..5] eyes positioned ^ ^ ^.1 run function aspects:item/essence_cage/store_essence_from_use/raycast/raycast
tag @s remove raycaster