advancement revoke @s only aspects:relic/summon_shattered_relic

# Run only if configs allow...
execute unless score #aspects aspects.config.player_kills_reward_shattered_relic matches 1 run return fail

# If all passes, execute tag
function #aspects:relic/summon_shattered_relic
