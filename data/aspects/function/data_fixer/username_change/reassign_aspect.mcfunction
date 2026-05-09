# Logger
$execute if entity @p[tag=aspectlib.receive_logs] run tellraw @a[tag=aspectlib.receive_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]}, {selector:"@s",color:"gold"}," doesn't have a valid Aspect ID score (likely from a username change). Pulling ID from Aspect Item (",{text:"#$(id)",color:"gold"},") and reactivating their Aspect..."]}

# Fix Player ID
$scoreboard players set @s aspectlib.player_id $(id)

# Reset old username scores
## Due to the nature if this operation, reset values
data remove storage aspectlib:cache temp.id
data remove storage aspectlib:cache temp.username
## Perform operation
function aspectlib:expose/player/id
function aspectlib:expose/player/username with storage aspectlib:cache temp
execute if data storage aspectlib:cache temp.username run function aspects:data_fixer/username_change/reset_old_username_scores with storage aspectlib:cache temp

# Update current username
function aspectlib:player/username/trigger
# Reactivate current Aspect
$function $(aspect_namespace):aspect/$(aspect_name)/reactivate

# Log username changes
scoreboard players reset #aspects aspectlib.dummy
$execute store result score #aspects aspectlib.dummy run data get storage aspectlib:users player.$(id).aspectlib.player.username_changes 1
scoreboard players add #aspects aspectlib.dummy 1
$execute store result storage aspectlib:users player.$(id).aspectlib.player.username_changes int 1 run scoreboard players get #aspects aspectlib.dummy
