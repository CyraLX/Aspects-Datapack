
execute if score #aspects aspects.config.aspectless_players_invisible matches 1.. run effect give @s minecraft:invisibility 1 255 true
execute if score #aspects aspects.config.aspectless_players_invincible matches 1.. run effect give @s minecraft:resistance 1 99 true
execute if score #aspects aspects.config.force_aspect_on_aspectless_players matches 1.. run return run function aspects:open_choose_aspect_menu
