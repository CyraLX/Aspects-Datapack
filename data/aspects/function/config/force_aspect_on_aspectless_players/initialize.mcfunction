# Should players without an Aspect forcfully open a new Aspect Choosing dialog
# (Functional on 1.21.6+ only!)
# Default: 1 (true)
scoreboard objectives add aspects.config.force_aspect_on_aspectless_players dummy
execute unless score #aspects aspects.config.force_aspect_on_aspectless_players = #aspects aspects.config.force_aspect_on_aspectless_players run scoreboard players set #aspects aspects.config.force_aspect_on_aspectless_players 1
