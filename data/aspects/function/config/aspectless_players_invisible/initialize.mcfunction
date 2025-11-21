# Should players without an Aspect be invisible
# (Functional on 1.21.6+ only!)
# Default: 1 (true)
scoreboard objectives add aspects.config.aspectless_players_invisible dummy
execute unless score #aspects aspects.config.aspectless_players_invisible = #aspects aspects.config.aspectless_players_invisible run scoreboard players set #aspects aspects.config.aspectless_players_invisible 1
