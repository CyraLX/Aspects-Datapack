# Return early if not aggravated
execute unless score @s aspects.aspect.rotten.is_aggravated matches 1.. run return fail
# Update scoreboard
function aspects:aspect/rotten/aggravated/scoreboard/update
# If not aggravated return early while executing timer ended function
execute unless score @s aspects.aspect.rotten.is_aggravated matches 1.. run return run function aspects:aspect/rotten/aggravated/timer_ended
# Update Bossbar
function aspects:aspect/rotten/aggravated/bossbar/update