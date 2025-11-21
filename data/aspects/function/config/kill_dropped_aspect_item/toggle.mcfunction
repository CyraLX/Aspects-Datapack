# If enabled, toggle off
execute if score #aspects aspects.config.kill_dropped_aspect_item matches 1 run return run function aspects:config/kill_dropped_aspect_item/disable
# Otherwise toggle on
return run function aspects:config/kill_dropped_aspect_item/enable
