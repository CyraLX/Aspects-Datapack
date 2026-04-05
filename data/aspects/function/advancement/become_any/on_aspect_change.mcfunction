# Make sure this is a player calling
execute unless entity @s[type=minecraft:player] run return fail
# And that it doesn't already have the advancement
execute if entity @s[advancements={aspects:gameplay/aspect/become_any=true}] run return fail

# Grant Advancmement
advancement grant @s only aspects:gameplay/aspect/become_any
# Print welcoming message
function aspectlib:expose/player/id
function aspects:expose/aspect/from_player_id with storage aspectlib:dummy
function aspects:advancement/become_any/introduction with storage aspectlib:dummy aspect
