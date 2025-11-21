# If enabled, toggle off
execute if score #aspects aspects.config.aspectless_players_negative_effects matches 1 run return run function aspects:config/aspectless_players_negative_effects/disable
# Otherwise toggle on
return run function aspects:config/aspectless_players_negative_effects/enable
