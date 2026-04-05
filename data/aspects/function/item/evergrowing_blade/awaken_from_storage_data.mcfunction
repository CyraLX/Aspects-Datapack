function aspectlib:expose/player/id
function aspects:expose/aspect/from_player_id with storage aspectlib:dummy
execute as @p[tag=evergrowing_blade_attacker,distance=..32] at @s run function aspects:item/essence_cage/awaken with storage aspectlib:dummy aspect

# Cleanup Tags
function aspects:item/evergrowing_blade/tag/remove_all
