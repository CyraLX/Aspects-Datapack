function aspectlib:expose/player/id
function aspects:expose/aspect/from_player_id with storage aspectlib:cache temp
execute as @p[tag=aspects.evergrowing_blade.attacker,distance=..32] at @s run function aspects:item/essence_cage/awaken with storage aspectlib:cache temp.aspect

# Cleanup Tags
function aspects:item/evergrowing_blade/tag/remove_all
