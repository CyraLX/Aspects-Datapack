# If enabled, toggle off
execute if score #aspects aspects.config.show_introduction matches 1 run return run function aspects:config/show_introduction/disable
# Otherwise toggle on
return run function aspects:config/show_introduction/enable
