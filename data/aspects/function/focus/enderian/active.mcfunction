execute at @s run playsound entity.player.teleport player @a[distance=..16]
scoreboard players set .raycastLimit aspects.focus.enderian.raycast.forward 100
scoreboard players set .raycastLimit aspects.focus.enderian.raycast.downward 100
execute at @s anchored eyes positioned ^ ^ ^0.25 run function aspects:focus/enderian/raycast/forward
execute at @s anchored eyes positioned ^ ^ ^25.25 run function aspects:focus/enderian/raycast/downward
execute at @s run playsound entity.player.teleport player @a[distance=..16]
advancement revoke @s from aspects:focus/enderian/use
