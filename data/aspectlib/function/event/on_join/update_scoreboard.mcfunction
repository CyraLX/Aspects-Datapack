# If `minecraft:leave_game` increments, execute event ON_JOIN
execute if score @s aspectlib.leave_game.last < @s aspectlib.leave_game run function aspectlib:event/on_join/execute
# Update last scoreboard check with new statistic data
scoreboard players operation @s aspectlib.leave_game.last = @s aspectlib.leave_game