execute if score #aspects aspects.config.aspectless_players_invisible matches 1.. run effect give @s minecraft:invisibility 1 255 true
execute if score #aspects aspects.config.aspectless_players_invincible matches 1.. run effect give @s minecraft:resistance 1 99 true
execute unless score #aspects aspects.config.aspectless_players_negative_effects matches 1.. run return fail
effect give @s minecraft:weakness 1 99 true
effect give @s minecraft:slowness 1 99 true
effect give @s minecraft:mining_fatigue 1 99 true
