# Exposes the player ID into a temporary storage
# Intended to be used right away in macro commands such as `function <name> with storage aspectlib:dummy`

# If this isn't a player and player_id is not set, default to -1
execute unless entity @s[type=minecraft:player] unless score @s aspectlib.player_id = @s aspectlib.player_id run return run data modify storage aspectlib:dummy id set value -1
# Otherwise, store player_id in temporary storage
execute store result storage aspectlib:dummy id int 1 run scoreboard players get @s aspectlib.player_id
