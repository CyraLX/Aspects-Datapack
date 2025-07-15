# If data is missing, create
$execute unless data storage aspectlib:player_$(id) aspects.pack_format run data modify storage aspectlib:player_$(id) aspects.pack_format set value {previous: 0, current: 0}
# Update previous pack_format
$data modify storage aspectlib:player_$(id) aspects.pack_format.previous set from storage aspectlib:player_$(id) aspects.pack_format.current
# Update current pack_format
$execute store result storage aspectlib:player_$(id) aspects.pack_format.current int 1 run scoreboard players get #aspects aspects.pack_format
