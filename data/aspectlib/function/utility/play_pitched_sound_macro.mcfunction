# Randomize pitch ±0.2 of base value
## Generate ±0.2 value
execute store result score #aspectlib aspectlib.temp run random value 80..120 aspectlib:sound_pitch
## Add base pitch
$scoreboard players set #aspectlib aspectlib.temp2 $(pitch)
scoreboard players operation #aspectlib aspectlib.temp = #aspectlib aspectlib.temp
## Convert to a float while storing
execute store result storage aspectlib:cache temp.sound.pitch float 0.01 run scoreboard players get #aspectlib aspectlib.temp
# Convert and store volume
$scoreboard players set #aspectlib aspectlib.temp $(volume)
execute store result storage aspectlib:cache temp.sound.volume float 0.01 run scoreboard players get #aspectlib aspectlib.temp
# Store sound and volume
$data modify storage aspectlib:cache temp.sound.sound set value "$(sound)" 
$data modify storage aspectlib:cache temp.sound.type set value $(type)
# Calculate distance from volume while storing
execute store result storage aspectlib:cache temp.sound.distance float 16 run data get storage aspectlib:cache temp.sound.volume 1
# Play Sound
function aspectlib:utility/play_sound_macro with storage aspectlib:cache temp.sound
