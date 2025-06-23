# If enabled, toggle off
execute if score #aspects aspects.config.track_statistics matches 1 run return run function aspects:config/disable/track_statistics
# Otherwise toggle on
return run function aspects:config/enable/track_statistics
