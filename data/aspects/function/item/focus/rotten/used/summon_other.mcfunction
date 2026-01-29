particle minecraft:dust{color:16777215,scale:1} ~ ~.8 ~ 0.3 0.5 0.3 0 25
particle minecraft:dust{color:16777215,scale:2} ~ ~.8 ~ 0.3 0.5 0.3 0 10
particle minecraft:dust{color:16777215,scale:3} ~ ~.8 ~ 0.3 0.5 0.3 0 5
particle minecraft:block_crumble{block_state:"minecraft:cobblestone"} ~ ~ ~ 0.3 0.6 0.3 1 100
playsound minecraft:entity.zombified_piglin.ambient hostile @a[distance=..16] ~ ~ ~ 1 1

execute summon minecraft:zombified_piglin run function aspects:item/focus/rotten/used/zombie_data
