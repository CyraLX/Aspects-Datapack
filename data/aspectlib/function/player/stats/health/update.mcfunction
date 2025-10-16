# Store current Absoprtion
execute store result score @s aspectlib.absorption run data get entity @s AbsorptionAmount 10
# Store current Health
execute store result score @s aspectlib.hp run data get entity @s Health 10
# Store max Health
execute store result score @s aspectlib.hp_max run attribute @s minecraft:max_health get 10
# Store total Health
scoreboard players operation @s aspectlib.hp_total = @s aspectlib.hp
scoreboard players operation @s aspectlib.hp_total += @s aspectlib.absorption

# Setup dummy for upcoming math
scoreboard players set #aspects aspectlib.dummy 100
# Calculate percentage of current Health
scoreboard players operation @s aspectlib.hp_relative = @s aspectlib.hp
scoreboard players operation @s aspectlib.hp_relative *= #aspects aspectlib.dummy
scoreboard players operation @s aspectlib.hp_relative /= @s aspectlib.hp_max
# Calculate percentage of current Health with Absorption
scoreboard players operation @s aspectlib.hp_relative_total = @s aspectlib.hp_total
scoreboard players operation @s aspectlib.hp_relative_total *= #aspects aspectlib.dummy
scoreboard players operation #aspects aspectlib.dummy = @s aspectlib.hp_max
scoreboard players operation #aspects aspectlib.dummy += @s aspectlib.absorption
scoreboard players operation @s aspectlib.hp_relative_total /= #aspects aspectlib.dummy