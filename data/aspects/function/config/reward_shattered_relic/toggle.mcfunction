# If enabled, toggle off
execute if score #aspects aspects.config.reward_shattered_relic matches 1 run return run function aspects:config/reward_shattered_relic/disable
# Otherwise toggle on
return run function aspects:config/reward_shattered_relic/enable
