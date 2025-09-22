$scoreboard players set @s aspectlib.player_id $(id)
function aspectlib:player/username/trigger
$function $(aspect_namespace):aspect/$(aspect_name)/reactivate

scoreboard players reset #aspects aspectlib.dummy
$execute store result score #aspects aspectlib.dummy run data get storage aspectlib:player_$(id) aspectlib.player.username_changes 1
scoreboard players add #aspects aspectlib.dummy 1
$execute store result storage aspectlib:player_$(id) aspectlib.player.username_changes int 1 run scoreboard players get #aspects aspectlib.dummy
