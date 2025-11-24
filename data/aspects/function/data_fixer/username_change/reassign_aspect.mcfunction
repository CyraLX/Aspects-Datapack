# Logger
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]}, {selector:"@s",color:"gold"}," doesn't have a valid Aspect ID score (likely from a username change). Pulling ID from Aspect Item and reactivating their Aspect..."]}

$scoreboard players set @s aspectlib.player_id $(id)
function aspectlib:player/username/trigger
$function $(aspect_namespace):aspect/$(aspect_name)/reactivate

scoreboard players reset #aspects aspectlib.dummy
$execute store result score #aspects aspectlib.dummy run data get storage aspectlib:users player.$(id).aspectlib.player.username_changes 1
scoreboard players add #aspects aspectlib.dummy 1
$execute store result storage aspectlib:users player.$(id).aspectlib.player.username_changes int 1 run scoreboard players get #aspects aspectlib.dummy
