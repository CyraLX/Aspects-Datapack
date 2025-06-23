# Run only if configs allow...
execute unless score #aspects aspects.config.reward_faded_relic matches 1 run return fail
# And if the user has an Aspect...
execute unless predicate aspects:aspect/any run return fail

# If all passes, execute tag
function #aspects:relic/summon_faded_relic
