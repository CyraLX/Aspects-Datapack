scoreboard players set #aspects aspectlib.dummy 0
data modify storage aspectlib:dummy config set from storage aspectlib:data configs.aspects.force_default_aspect
data modify storage aspectlib:dummy string set value ""
data modify storage aspectlib:dummy appending_string set value ""
function aspects:config/force_default_aspect/dialog/build/recursive