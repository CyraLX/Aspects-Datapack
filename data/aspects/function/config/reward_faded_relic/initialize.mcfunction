# When True, makes it so that Players which do not have an active Aspect become invisible.
# Default: 1 (true)
scoreboard objectives add aspects.config.reward_faded_relic dummy
execute unless score #aspects aspects.config.reward_faded_relic = #aspects aspects.config.reward_faded_relic run scoreboard players set #aspects aspects.config.reward_faded_relic 1
