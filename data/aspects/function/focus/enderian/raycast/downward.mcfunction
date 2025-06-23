execute if score .raycastLimit aspects.focus.enderian.raycast.forward matches 1.. run return fail
scoreboard players remove .raycastLimit aspects.focus.enderian.raycast.downward 1


particle minecraft:witch ~ ~ ~ 0.25 0.25 0.25 0.1 1 force

execute unless block ~ ~ ~ #aspectlib:raycast/pass_through if score .raycastLimit aspects.focus.enderian.raycast.forward matches ..0 run tp ~ ~0.25 ~
execute if block ~ ~ ~ #aspectlib:raycast/pass_through if score .raycastLimit aspects.focus.enderian.raycast.downward matches 1.. positioned ~ ~-0.25 ~ run function aspects:focus/enderian/raycast/downward
