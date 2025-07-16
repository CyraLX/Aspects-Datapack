# Create Storage Player Data for the Aspect
$scoreboard players set @s aspects.aspect_id $(new_aspect_id)
$data modify storage aspectlib:player_$(id) aspects.aspect set from storage aspects:aspect_list $(new_aspect_namespace):$(new_aspect_name)
$data modify storage aspectlib:player_$(id) aspects.aspect_data."$(new_aspect_namespace):$(new_aspect_name)" set value {}

# Don't update statistics if disabled
execute if score #aspects aspects.config.track_statistics matches ..0 run return fail

# Make sure the changed Aspect is not the same before continuing
## Store IDs in scoreboards
$execute if data storage aspects:aspect_list $(old_aspect_namespace):$(old_aspect_name) store result score #aspects.old aspects.aspect_id run data get storage aspects:aspect_list $(old_aspect_namespace):$(old_aspect_name).id
$execute store result score #aspects.new aspects.aspect_id run data get storage aspects:aspect_list $(new_aspect_namespace):$(new_aspect_name).id

## If new ID is undefined, cancel
execute unless score #aspects.new aspects.aspect_id = #aspects.new aspects.aspect_id run return fail
## If old and new aspect is the same, cancel
execute if score #aspects.old aspects.aspect_id = #aspects.new aspects.aspect_id run return fail

# Update new Aspect Stats
## Increase Total Picks
$scoreboard players add #$(new_aspect_namespace):$(new_aspect_name) aspects.aspect_stats.total 1
## Increase Active Users
$scoreboard players add #$(new_aspect_namespace):$(new_aspect_name) aspects.aspect_stats.active 1
## Update Peak Active Users
$scoreboard players operation #$(new_aspect_namespace):$(new_aspect_name) aspects.aspect_stats.active_peak > #$(new_aspect_namespace):$(new_aspect_name) aspects.aspect_stats.active
## If user picked new Aspect as their first, increase First Pick and return early
$execute unless score #aspects.old aspects.aspect_id = #aspects.old aspects.aspect_id run return run scoreboard players add #$(new_aspect_namespace):$(new_aspect_name) aspects.aspect_stats.first_pick 1

# Update old Aspect stats
## Increase Removed Count
$scoreboard players add #$(old_aspect_namespace):$(old_aspect_name) aspects.aspect_stats.faded 1
## Decrease Active Users
$scoreboard players remove #$(old_aspect_namespace):$(old_aspect_name) aspects.aspect_stats.active 1
