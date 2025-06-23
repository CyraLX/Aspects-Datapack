# If enabled, toggle off
execute if score #aspects aspects.config.force_aspect_on_aspectless_players matches 1 run return run function aspects:config/disable/force_aspect_on_aspectless_players
# Otherwise toggle on
return run function aspects:config/enable/force_aspect_on_aspectless_players
