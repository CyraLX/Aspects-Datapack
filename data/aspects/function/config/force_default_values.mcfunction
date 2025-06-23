# Give temporary tag
tag @s add config_changer
# Give feedback in chat
execute if entity @a[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs, tag=!config_changer] [{"text":"[Aspects] ","color":"#f88379"},{"selector":"@s","color":"#aaaaaa","extra":[{"text":" reset all configs to default values"}]}]
tellraw @s [{"text":"[Aspects] ","color":"#f88379"},{"text":"Configs reset to default values","color":"#aaaaaa"}]
# Set scoreboard
scoreboard players set #aspects aspects.config.reward_faded_relic 1
scoreboard players set #aspects aspects.config.player_kills_reward_shattered_relic 1
scoreboard players set #aspects aspects.config.kill_dropped_aspect_item 1
scoreboard players set #aspects aspects.config.track_statistics 1
scoreboard players set #aspects aspects.config.force_aspect_on_aspectless_players 1
scoreboard players set #aspects aspects.config.aspectless_players_invisible 1
scoreboard players set #aspects aspects.config.aspectless_players_invincible 1
# Cleanup
tag @s remove config_changer
