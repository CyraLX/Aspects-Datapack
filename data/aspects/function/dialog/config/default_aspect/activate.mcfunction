scoreboard players set #aspects aspectlib.dummy 0
data modify storage aspectlib:dummy string set value "{label:'NONE',action:{type:'minecraft:run_command',command:'title @s title none'}}"
data modify storage aspectlib:dummy appending_string set value ""
function aspects:dialog/config/default_aspect/recursive