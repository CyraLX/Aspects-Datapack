# Create scoreboard
scoreboard objectives add aspectlib.player_id dummy

# If scoreboard was just created and id is not set, default to 1
execute if score #aspects aspectlib.player_id matches ..0 run scoreboard players set #aspects aspectlib.player_id 1