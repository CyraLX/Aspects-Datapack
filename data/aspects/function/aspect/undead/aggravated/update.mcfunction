# Return early if not aggravated
execute unless score @s aspects.aspect.undead.is_aggravated matches 1.. run return fail
# Update scoreboard
function aspects:aspect/undead/aggravated/scoreboard/update
# If not aggravated return early while executing timer ended function
execute unless score @s aspects.aspect.undead.is_aggravated matches 1.. run return run function aspects:aspect/undead/aggravated/timer_ended
# Update Bossbar
function aspects:aspect/undead/aggravated/bossbar/update