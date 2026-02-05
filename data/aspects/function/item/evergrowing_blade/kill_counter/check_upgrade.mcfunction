# Prepare Scores
scoreboard players reset #aspects aspectlib.dummy
scoreboard players reset #aspects aspects.evergrowing_blade.level

# Store expected level based on the kill counter
execute if score @s aspects.evergrowing_blade.kill_counter matches ..31 run scoreboard players set #aspects aspects.evergrowing_blade.level 1
execute if score @s aspects.evergrowing_blade.kill_counter matches 32..63 run scoreboard players set #aspects aspects.evergrowing_blade.level 2
execute if score @s aspects.evergrowing_blade.kill_counter matches 64..127 run scoreboard players set #aspects aspects.evergrowing_blade.level 3
execute if score @s aspects.evergrowing_blade.kill_counter matches 128..255 run scoreboard players set #aspects aspects.evergrowing_blade.level 4
execute if score @s aspects.evergrowing_blade.kill_counter matches 256..511 run scoreboard players set #aspects aspects.evergrowing_blade.level 5
execute if score @s aspects.evergrowing_blade.kill_counter matches 512..1023 run scoreboard players set #aspects aspects.evergrowing_blade.level 6
execute if score @s aspects.evergrowing_blade.kill_counter matches 1024.. run scoreboard players set #aspects aspects.evergrowing_blade.level 7
# Store needed upgrade amount based on kill counter
execute if score @s aspects.evergrowing_blade.kill_counter matches ..31 run scoreboard players set @s aspectlib.dummy 32
execute if score @s aspects.evergrowing_blade.kill_counter matches 32..63 run scoreboard players set @s aspectlib.dummy 64
execute if score @s aspects.evergrowing_blade.kill_counter matches 64..127 run scoreboard players set @s aspectlib.dummy 128
execute if score @s aspects.evergrowing_blade.kill_counter matches 128..255 run scoreboard players set @s aspectlib.dummy 256
execute if score @s aspects.evergrowing_blade.kill_counter matches 256..511 run scoreboard players set @s aspectlib.dummy 512
execute if score @s aspects.evergrowing_blade.kill_counter matches 512..1023 run scoreboard players set @s aspectlib.dummy 1024
execute if score @s aspects.evergrowing_blade.kill_counter matches 1024.. run scoreboard players set @s aspectlib.dummy 0

# If level did not change return early
execute if score #aspects aspects.evergrowing_blade.level = @s aspects.evergrowing_blade.level run return fail

# Otherwise upgrade sword
## Generate a random variant if it levels up for the first time
execute if score #aspects aspects.evergrowing_blade.level matches 2 store result storage aspectlib:dummy evergrowing_blade.variant int 1 run random value 0..3 aspects:item/evergrowing_blade/variant
execute store result score #aspects aspectlib.dummy run data get storage aspectlib:dummy evergrowing_blade.variant
## Run Upgrade
execute store result storage aspectlib:dummy evergrowing_blade.level int 1 run scoreboard players get #aspects aspects.evergrowing_blade.level
function aspects:item/evergrowing_blade/kill_counter/upgrade_macro with storage aspectlib:dummy evergrowing_blade

# Grant advancement if maxed (Level 7)
execute if score #aspects aspects.evergrowing_blade.level matches 7.. run advancement grant @s only aspects:gameplay/get_evergrowing_blade_max
