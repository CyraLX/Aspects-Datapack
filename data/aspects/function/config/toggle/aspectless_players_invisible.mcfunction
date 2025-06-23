# If enabled, toggle off
execute if score #aspects aspects.config.aspectless_players_invisible matches 1 run return run function aspects:config/disable/aspectless_players_invisible
# Otherwise toggle on
return run function aspects:config/enable/aspectless_players_invisible
