# When True, makes it so that Players which do not have an active Aspect become invisible.
# Default: 1 (true)
scoreboard objectives add aspects.config.force_aspect_on_aspectless_players dummy
execute unless score #aspects aspects.config.force_aspect_on_aspectless_players = #aspects aspects.config.force_aspect_on_aspectless_players run scoreboard players set #aspects aspects.config.force_aspect_on_aspectless_players 1
