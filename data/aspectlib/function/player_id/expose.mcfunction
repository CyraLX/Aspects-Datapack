# Exposes the player ID into a temporary storage
# Intended to be used right away in macro commands such as `function <name> with storage aspectlib:dummy`
execute store result storage aspectlib:dummy id int 1 run scoreboard players get @s aspectlib.player_id