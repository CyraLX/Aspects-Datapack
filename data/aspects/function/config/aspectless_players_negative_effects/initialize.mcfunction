# When True, gives Players that do not have an active Aspect the following Potion Effects at their highest level:
## Weakness
## Slowness
## Mining Fatigue
# Default: 1 (true)
scoreboard objectives add aspects.config.aspectless_players_negative_effects dummy
execute unless score #aspects aspects.config.aspectless_players_negative_effects = #aspects aspects.config.aspectless_players_negative_effects run scoreboard players set #aspects aspects.config.aspectless_players_negative_effects 1
