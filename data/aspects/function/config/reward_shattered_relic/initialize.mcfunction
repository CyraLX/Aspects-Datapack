# When True, and a Player Aspect is killed by another Player, they drop a Shattered Relic based on their active Aspect.
# Default: 1 (true)
scoreboard objectives add aspects.config.reward_shattered_relic dummy
execute unless score #aspects aspects.config.reward_shattered_relic = #aspects aspects.config.reward_shattered_relic run scoreboard players set #aspects aspects.config.reward_shattered_relic 1

# Convert old scoreboard to new one
execute if score #aspects aspects.config.player_kills_reward_shattered_relic = #aspects aspects.config.player_kills_reward_shattered_relic run scoreboard players operation #aspects aspects.config.reward_shattered_relic = #aspects aspects.config.player_kills_reward_shattered_relic
scoreboard objectives remove aspects.config.player_kills_reward_shattered_relic
