# If enabled, toggle off
execute if score #aspects aspects.config.reward_faded_relic matches 1 run return run function aspects:config/disable/reward_faded_relic
# Otherwise toggle on
return run function aspects:config/enable/reward_faded_relic
