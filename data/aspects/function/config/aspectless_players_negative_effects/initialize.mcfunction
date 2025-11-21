# Should players without an Aspect be have extreme negative effects
# (Functional on 1.21.6+ only!)
# Default: 1 (true)
scoreboard objectives add aspects.config.aspectless_players_negative_effects dummy
execute unless score #aspects aspects.config.aspectless_players_negative_effects = #aspects aspects.config.aspectless_players_negative_effects run scoreboard players set #aspects aspects.config.aspectless_players_negative_effects 1
