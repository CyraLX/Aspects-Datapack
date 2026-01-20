scoreboard players remove .raycastLimit aspects.focus.enderian.raycast.forward 1

particle minecraft:end_rod ~ ~ ~ 0 0 0 0.01 1 force
particle minecraft:witch ~ ~ ~ 0.25 0.25 0.25 0 1 force
particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 0 1 force
particle minecraft:reverse_portal ~ ~ ~ 0.5 0.5 0.5 0 1 force

execute unless block ~ ~ ~ #aspectlib:raycast/pass_through positioned ^ ^ ^-0.25 run tp @s ~ ~ ~
execute if block ~ ~ ~ #aspectlib:raycast/pass_through if score .raycastLimit aspects.focus.enderian.raycast.forward matches 1.. positioned ^ ^ ^0.25 run function aspects:item/focus/enderian/raycast/forward
execute if block ~ ~ ~ #aspectlib:raycast/pass_through if score .raycastLimit aspects.focus.enderian.raycast.forward matches ..0 positioned ^ ^ ^ run function aspects:item/focus/enderian/raycast/downward
