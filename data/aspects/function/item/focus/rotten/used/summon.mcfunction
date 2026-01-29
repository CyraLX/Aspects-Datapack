scoreboard players reset #aspects aspectlib.dummy
execute if dimension minecraft:overworld run return run function aspects:item/focus/rotten/used/summon_overworld
execute if dimension minecraft:the_nether run return run function aspects:item/focus/rotten/used/summon_the_nether
execute if dimension minecraft:the_end run return run function aspects:item/focus/rotten/used/summon_the_end
function aspects:item/focus/rotten/used/summon_other
