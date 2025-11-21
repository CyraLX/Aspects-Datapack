# Remove any dropped Aspects
execute if score #aspects aspects.config.kill_dropped_aspect_item matches 1.. as @e[type=minecraft:item, nbt={Item: {id: "minecraft:jigsaw", components: {"minecraft:equippable": {slot: "body"}}}}] at @s run function aspects:tick/delete_dropped_aspects
# Make Aspectless players Invisible and/or Resistant to damage
execute as @a[predicate=aspects:dialog/choose_menu/is_open] at @s run function aspects:dialog/choose_aspect/effects
# Make sure players have their Aspect by calling Event ON_RESPAWN if they are missing one
execute as @a[predicate=aspectlib:flags/is_alive, predicate=aspectlib:periodic_tick/100, predicate=!aspects:aspect/any, predicate=aspects:aspect/any_score] at @s run function aspects:tick/missing_aspect

# Generic Powers
## Perform water check for later powers
execute as @a[predicate=aspectlib:flags/is_alive, predicate=aspectlib:gamemode/survival_or_adventure, predicate=aspectlib:periodic_tick/20] at @s run function aspectlib:predicate/check_if_in_water
## Hydrophobia
execute as @a[predicate=aspectlib:flags/is_alive, predicate=aspects:aspect_group/is_hydrophobic, predicate=aspectlib:checked_if_hitbox_is_in_water] at @s run function aspects:aspect/generic/hydrophobia/update
## Moisture
execute as @a[predicate=aspectlib:flags/is_alive, predicate=aspects:aspect_group/is_moisture_dependant, predicate=aspectlib:checked_if_hitbox_is_in_water] at @s run function aspects:aspect/generic/moisture/update
