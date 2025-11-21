# If enabled, toggle off
execute if score #aspects aspects.config.track_statistics matches 1 run return run function aspects:config/track_statistics/disable
# Otherwise toggle on
return run function aspects:config/track_statistics/enable
