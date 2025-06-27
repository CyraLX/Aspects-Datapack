# Give temporary tag
tag @s add config_changer
# Give feedback in chat
execute if entity @a[tag=get_debug_logs] if score #aspects aspects.config.aspectless_players_invisible matches 0 run tellraw @a[tag=get_debug_logs, tag=!config_changer] [{"text":"[Aspects]: ","color":"#f88379"},{"selector":"@s","color":"#aaaaaa","extra":[{"text":" set "},{"text":"ASPECTLESS_PLAYERS_INVISIBLE","color":"gold"},{"text":" to "},{"text":"FALSE","color":"gold"},{"text":", but it was already set to "},{"text":"FALSE","color":"gold"}]}]
execute if entity @a[tag=get_debug_logs] unless score #aspects aspects.config.aspectless_players_invisible matches 0 run tellraw @a[tag=get_debug_logs, tag=!config_changer] [{"text":"[Aspects]: ","color":"#f88379"},{"selector":"@s","color":"#aaaaaa","extra":[{"text":" set "},{"text":"ASPECTLESS_PLAYERS_INVISIBLE","color":"gold"},{"text":" to "},{"text":"FALSE","color":"gold"}]}]
execute if score #aspects aspects.config.aspectless_players_invisible matches 0 run tellraw @s [{"text":"[Aspects]: ","color":"#f88379"},{"text":"","color":"#aaaaaa","extra":[{"text":"ASPECTLESS_PLAYERS_INVISIBLE","color":"gold"},{"text":" was already set to "},{"text":"FALSE","color":"gold"}]}]
execute unless score #aspects aspects.config.aspectless_players_invisible matches 0 run tellraw @s [{"text":"[Aspects]: ","color":"#f88379"},{"text":"","color":"#aaaaaa","extra":[{"text":"ASPECTLESS_PLAYERS_INVISIBLE","color":"gold"},{"text":" is now set to "},{"text":"FALSE","color":"gold"}]}]
# Set scoreboard
scoreboard players set #aspects aspects.config.aspectless_players_invisible 0
# Cleanup
tag @s remove config_changer

return 0
