# Make sure this is a player calling
execute unless entity @s[type=minecraft:player] run return fail
# And that it doesn't already have the advancement
execute if entity @s[advancements={aspects:gameplay/aspect/become_any=true}] run return fail

# Grant Advancmement
advancement grant @s only aspects:gameplay/aspect/become_any
# Print welcoming message
function aspectlib:player/id/expose
function aspects:aspect/expose_aspect with storage aspectlib:dummy
function aspects:advancement/become_any/introduction with storage aspectlib:dummy aspect
