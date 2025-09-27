$item modify entity @s weapon.offhand $(namespace):focus/$(name)

execute unless score #aspects aspects.config.track_statistics matches 1.. run return fail
$execute unless predicate $(namespace):aspect/$(name)/is_active run return fail
$scoreboard players add #$(namespace):$(name) aspects.aspect_stats.focus_uses 1
