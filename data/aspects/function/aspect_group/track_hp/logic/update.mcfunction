# Store player nbt
data modify storage aspectlib:dummy player_nbt set from entity @s

# Store current Absoprtion
execute store result score @s aspects.aspect_group.track_hp.absorption run data get storage aspectlib:dummy player_nbt.AbsorptionAmount 100
# Store current Health
execute store result score @s aspects.aspect_group.track_hp.current run data get storage aspectlib:dummy player_nbt.Health 100
# Store max Health
execute store result score @s aspects.aspect_group.track_hp.maximum run attribute @s minecraft:max_health get 100
# Store total Health
scoreboard players operation @s aspects.aspect_group.track_hp.total = @s aspects.aspect_group.track_hp.current
scoreboard players operation @s aspects.aspect_group.track_hp.total += @s aspects.aspect_group.track_hp.absorption

# Setup dummy for upcoming math
scoreboard players set #aspects aspectlib.dummy 100
# Calculate percentage of current Health
scoreboard players operation @s aspects.aspect_group.track_hp.relative = @s aspects.aspect_group.track_hp.current
scoreboard players operation @s aspects.aspect_group.track_hp.relative *= #aspects aspectlib.dummy
scoreboard players operation @s aspects.aspect_group.track_hp.relative /= @s aspects.aspect_group.track_hp.maximum
# Caclucalte persentage of current Health with Absorption with base max Health
scoreboard players operation @s aspects.aspect_group.track_hp.relative_overflow = @s aspects.aspect_group.track_hp.current
scoreboard players operation @s aspects.aspect_group.track_hp.relative_overflow += @s aspects.aspect_group.track_hp.absorption
scoreboard players operation @s aspects.aspect_group.track_hp.relative_overflow *= #aspects aspectlib.dummy
scoreboard players operation @s aspects.aspect_group.track_hp.relative_overflow /= @s aspects.aspect_group.track_hp.maximum
# Calculate percentage of current Health with Absorption with modified max Health that contains current Absorption
scoreboard players operation @s aspects.aspect_group.track_hp.relative_total = @s aspects.aspect_group.track_hp.total
scoreboard players operation @s aspects.aspect_group.track_hp.relative_total *= #aspects aspectlib.dummy
scoreboard players operation #aspects aspectlib.dummy = @s aspects.aspect_group.track_hp.maximum
scoreboard players operation #aspects aspectlib.dummy += @s aspects.aspect_group.track_hp.absorption
scoreboard players operation @s aspects.aspect_group.track_hp.relative_total /= #aspects aspectlib.dummy

# Cleanup storage
data remove storage aspectlib:dummy player_nbt
