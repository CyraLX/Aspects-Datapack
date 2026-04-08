$execute store result score #aspects aspectlib.dummy run data modify storage aspectlib:dummy aspect set from storage aspects:registry aspect[{id: $(aspect_id)}]
execute unless score #aspects aspectlib.dummy matches 1 run return run function aspects:config/force_default_aspect/fix_value

