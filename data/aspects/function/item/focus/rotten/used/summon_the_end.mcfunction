particle minecraft:dust{color:16777215,scale:1} ~ ~.8 ~ 0.3 0.5 0.3 0 25
particle minecraft:dust{color:16777215,scale:2} ~ ~.8 ~ 0.3 0.5 0.3 0 10
particle minecraft:dust{color:16777215,scale:3} ~ ~.8 ~ 0.3 0.5 0.3 0 5
particle minecraft:block_crumble{block_state:"minecraft:end_stone"} ~ ~ ~ 0.3 0.6 0.3 1 50
particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.3 25
particle minecraft:witch ~ ~ ~ 0.3 0.4 0.3 0 25
playsound minecraft:entity.zombified_piglin.ambient hostile @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.enderman.teleport hostile @a[distance=..16] ~ ~ ~ 1 1

scoreboard players set #aspects aspectlib.dummy 3
execute summon minecraft:zombified_piglin run function aspects:item/focus/rotten/used/zombie_data with storage aspectlib:dummy
