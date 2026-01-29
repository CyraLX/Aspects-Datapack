# Remove any dropped Aspects
execute if score #aspects aspects.config.kill_dropped_aspect_item matches 1.. as @e[type=minecraft:item, nbt={Item: {id: "minecraft:jigsaw", components: {"minecraft:equippable": {slot: "body"}}}}] at @s run function aspects:tick/delete_dropped_aspects
# Make Aspectless players Invisible and/or Resistant to damage
execute as @a[predicate=aspects:dialog/choose_menu/is_open] at @s run function aspects:dialog/choose_aspect/effects
# Make sure players have their Aspect by calling Event ON_RESPAWN if they are missing one
execute as @a[predicate=aspectlib:flags/is_alive, predicate=aspectlib:periodic_tick/100, predicate=!aspects:aspect/any, predicate=aspects:aspect/any_score] at @s run function aspects:tick/missing_aspect
# Delete unique items when held in mainhand or offhand
execute as @a[predicate=aspectlib:flags/is_alive, predicate=aspectlib:gamemode/survival_or_adventure, predicate=aspects:equipment/aspect_unique/mainhand] at @s run item replace entity @s weapon.mainhand with minecraft:air
execute as @a[predicate=aspectlib:flags/is_alive, predicate=aspectlib:gamemode/survival_or_adventure, predicate=aspects:equipment/aspect_unique/offhand] at @s run item replace entity @s weapon.offhand with minecraft:air

# Data Fixer
## Essence Cage
execute as @a[predicate=aspectlib:periodic_tick/20, predicate=aspects:item/essence_cage/is_held] at @s run function aspects:data_fixer/item/essence_cage/check
## Essence Cage (Awakened)
execute as @a[predicate=aspectlib:periodic_tick/20, predicate=aspects:item/essence_cage_awakened/is_held] at @s run function aspects:data_fixer/item/essence_cage_awakened/check

# Aspects
## Generic Powers
execute as @a[predicate=aspectlib:flags/is_alive] at @s run function aspects:tick/aspect_groups
## Rotten Summons
execute as @e[type=#aspects:aspect/rotten/summons, tag=aspects.rotten.summon] run function aspects:item/focus/rotten/used/zombie_expire
