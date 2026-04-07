scoreboard players set #aspects aspectlib.dummy 0
data modify storage aspectlib:dummy string set value ""
data modify storage aspectlib:dummy appending_string set value ""
function aspects:dialog/config/force_default_aspect/build/recursive