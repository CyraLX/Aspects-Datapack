execute at @s run playsound entity.player.teleport player @a[distance=..16]
scoreboard players operation .raycastLimit aspects.focus.enderian.raycast.forward = #aspects aspects.config.enderian.teleport_forward_distance
scoreboard players operation .raycastLimit aspects.focus.enderian.raycast.downward = #aspects aspects.config.enderian.teleport_downward_distance
execute at @s anchored eyes positioned ^ ^ ^0.25 run function aspects:item/focus/enderian/raycast/forward
execute at @s run playsound entity.player.teleport player @a[distance=..16]
advancement revoke @s from aspects:item/focus/enderian/use
