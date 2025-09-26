scoreboard players remove .raycastLimit aspects.focus.shulk.raycast 1

execute unless block ~ ~ ~ #aspectlib:raycast/pass_through positioned ^ ^ ^-0.1 run function aspects:item/focus/shulk/storage/place_down
execute if block ~ ~ ~ #aspectlib:raycast/pass_through if score .raycastLimit aspects.focus.shulk.raycast matches 1.. positioned ^ ^ ^0.1 run function aspects:item/focus/shulk/storage/raycast/forward
 