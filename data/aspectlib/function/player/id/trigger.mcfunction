# Assign the max player ID to the player
scoreboard players operation @s aspectlib.player_id = #aspects aspectlib.player_id

# Store the id into a storage
## Temporary pull the ID into storage
function aspectlib:player/id/expose
## Store the ID for a specific player based on that ID
function aspectlib:player/id/store with storage aspectlib:dummy
## Cleaup temporary storage
data remove storage aspectlib:dummy id

# Log in chat
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{"text":"[AspectLib]: ","color":"#7700A7"},{selector:"@s",color:"gold"},{"text":" was assigned ID "},{"text":"#","color":"gold","extra":[{"score":{"name":"@s","objective":"aspectlib.player_id"}}]}]}

# Increment the max player ID by one
scoreboard players add #aspects aspectlib.player_id 1
