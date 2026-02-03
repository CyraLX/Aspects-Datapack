scoreboard players reset #aspects aspectlib.dummy
execute if dimension minecraft:overworld run return run function aspects:item/focus/rotten/used/summon/overworld
execute if dimension minecraft:the_nether run return run function aspects:item/focus/rotten/used/summon/the_nether
execute if dimension minecraft:the_end run return run function aspects:item/focus/rotten/used/summon/the_end
function aspects:item/focus/rotten/used/summon/other
