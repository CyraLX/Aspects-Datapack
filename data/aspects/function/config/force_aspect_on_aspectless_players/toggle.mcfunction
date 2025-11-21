# If enabled, toggle off
execute if score #aspects aspects.config.force_aspect_on_aspectless_players matches 1 run return run function aspects:config/force_aspect_on_aspectless_players/disable
# Otherwise toggle on
return run function aspects:config/force_aspect_on_aspectless_players/enable
