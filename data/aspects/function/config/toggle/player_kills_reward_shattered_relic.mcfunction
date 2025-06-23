# If enabled, toggle off
execute if score #aspects aspects.config.player_kills_reward_shattered_relic matches 1 run return run function aspects:config/disable/player_kills_reward_shattered_relic
# Otherwise toggle on
return run function aspects:config/enable/player_kills_reward_shattered_relic
