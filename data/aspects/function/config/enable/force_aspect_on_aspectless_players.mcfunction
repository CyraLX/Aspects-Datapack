# Give temporary tag
tag @s add config_changer
# Give feedback in chat
execute if entity @a[tag=get_debug_logs] if score #aspects aspects.config.force_aspect_on_aspectless_players matches 1 run tellraw @a[tag=get_debug_logs, tag=!config_changer] [{"text":"[Aspects]: ","color":"#f88379"},{"selector":"@s","color":"#aaaaaa","extra":[{"text":" set "},{"text":"FORCE_ASPECT_ON_ASPECTLESS_PLAYERS","color":"gold"},{"text":" to "},{"text":"TRUE","color":"gold"},{"text":", but it was already set to "},{"text":"TRUE","color":"gold"}]}]
execute if entity @a[tag=get_debug_logs] unless score #aspects aspects.config.force_aspect_on_aspectless_players matches 1 run tellraw @a[tag=get_debug_logs, tag=!config_changer] [{"text":"[Aspects]: ","color":"#f88379"},{"selector":"@s","color":"#aaaaaa","extra":[{"text":" set "},{"text":"FORCE_ASPECT_ON_ASPECTLESS_PLAYERS","color":"gold"},{"text":" to "},{"text":"TRUE","color":"gold"}]}]
execute if score #aspects aspects.config.force_aspect_on_aspectless_players matches 1 run tellraw @s [{"text":"[Aspects]: ","color":"#f88379"},{"text":"","color":"#aaaaaa","extra":[{"text":"FORCE_ASPECT_ON_ASPECTLESS_PLAYERS","color":"gold"},{"text":" was already set to "},{"text":"TRUE","color":"gold"}]}]
execute unless score #aspects aspects.config.force_aspect_on_aspectless_players matches 1 run tellraw @s [{"text":"[Aspects]: ","color":"#f88379"},{"text":"","color":"#aaaaaa","extra":[{"text":"FORCE_ASPECT_ON_ASPECTLESS_PLAYERS","color":"gold"},{"text":" is now set to "},{"text":"TRUE","color":"gold"}]}]
# Set scoreboard
scoreboard players set #aspects aspects.config.force_aspect_on_aspectless_players 1
# Cleanup
tag @s remove config_changer

return 1
