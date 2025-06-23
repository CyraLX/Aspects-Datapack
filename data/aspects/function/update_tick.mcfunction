# Remove any dropped Aspects
execute if score #aspects aspects.config.kill_dropped_aspect_item matches 1 as @e[type=minecraft:item, nbt={Item: {id: "minecraft:jigsaw", components: {"minecraft:equippable": {slot: "body"}}}}] at @s run function aspects:delete_dropped_aspects
# Open Aspect Picking dialog to players without Aspects and make them Invisible/Resistant
execute as @a[predicate=!aspects:aspect/any_score, predicate=!aspects:aspect/waiting_to_choose, advancements={aspects:aspect/give_aspect_from_trigger=false}] at @s if function aspects:pick_aspect if entity @a[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] [{"text":"[Aspects] ","color":"#f88379"},{"text":"","color":"#aaaaaa","extra":[{"selector":"@s"},{"text":" is choosing their first Aspect"}]}]
# Make sure players have their Aspect by calling Event ON_RESPAWN if they are missing one
execute as @a[predicate=aspectlib:flags/is_alive, predicate=aspectlib:periodic_tick/100, predicate=!aspects:aspect/any, predicate=aspects:aspect/any_score] at @s run function #aspectlib:event/on_respawn

# Generic Powers
execute as @a[predicate=aspects:generic/should_check_if_in_water, predicate=aspectlib:gamemode/survival_or_adventure, predicate=aspectlib:periodic_tick/20] at @s run function aspectlib:predicate/check_if_in_water
## Hydrophobia
execute as @a[predicate=aspects:aspect_group/is_hydrophobic, scores={aspectlib.checked_if_in_water=1..}] at @s run function aspects:aspect/generic/hydrophobia/update
## Moisture
execute as @a[predicate=aspects:aspect_group/is_moisture_dependant, scores={aspectlib.checked_if_in_water=1..}] at @s run function aspects:aspect/generic/moisture/update
