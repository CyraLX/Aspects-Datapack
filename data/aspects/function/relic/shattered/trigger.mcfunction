advancement revoke @s only aspects:relic/summon_shattered_relic

# Run only if configs allow...
execute unless score #aspects aspects.config.player_kills_reward_shattered_relic matches 1 run return fail
# And if the user is a player...
execute unless entity @s[type=minecraft:player] run return fail

# If all passes, execute tag
function aspectlib:player/id/expose
function aspects:relic/shattered/prepare_aspect_for_macro with storage aspectlib:dummy
