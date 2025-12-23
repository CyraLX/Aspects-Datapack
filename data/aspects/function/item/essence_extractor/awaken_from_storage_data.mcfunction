function aspectlib:player/id/expose
function aspects:aspect/expose_aspect with storage aspectlib:dummy
execute as @p[tag=essence_extractor_attacker,distance=..32] at @s run function aspects:item/essence_cage/awaken with storage aspectlib:dummy aspect

# Cleanup Tags
function aspects:item/essence_extractor/tag/remove_all
