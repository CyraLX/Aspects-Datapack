execute if score @s aspects.rascal.movement_speed_current = @s aspects.rascal.movement_speed_target run return fail
execute if score @s aspects.rascal.movement_speed_current > @s aspects.rascal.movement_speed_target run scoreboard players remove @s aspects.rascal.movement_speed_current 5
execute if score @s aspects.rascal.movement_speed_current < @s aspects.rascal.movement_speed_target run scoreboard players add @s aspects.rascal.movement_speed_current 5
execute if score @s aspects.rascal.movement_speed_current matches ..-30 run scoreboard players set @s aspects.rascal.movement_speed_current -30
execute if score @s aspects.rascal.movement_speed_current matches 40.. run scoreboard players set @s aspects.rascal.movement_speed_current 40
execute store result storage aspectlib:dummy movement_speed float 0.01 run scoreboard players get @s aspects.rascal.movement_speed_current
function aspects:aspect/rascal/light_level/set_attribute_macro with storage aspectlib:dummy