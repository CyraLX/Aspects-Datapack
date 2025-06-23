$execute store result score @s aspects.aspect_id run data get storage aspects:aspect_list $(new_aspect).id
$data modify storage aspectlib:player_$(id) aspects.aspect set from storage aspects:aspect_list $(new_aspect)
$data modify storage aspectlib:player_$(id) aspects.aspect_data.$(new_aspect) set value {}

# Don't update statistics if disabled
execute if score #aspects aspects.config.track_statistics matches ..0 run return fail
# Make sure the changed Aspect is not the same before continuing
## Check if old and new Aspects are defined before cchecking
scoreboard players set #aspects.old aspects.aspect_id -2147483647
scoreboard players set #aspects.new aspects.aspect_id -2147483647
$execute store success score #aspects.old aspectlib.dummy run data get storage aspects:aspect_list $(old_aspect).id
$execute store success score #aspects.new aspectlib.dummy run data get storage aspects:aspect_list $(new_aspect).id
$execute store result score #aspects.old aspects.aspect_id run data get storage aspects:aspect_list $(old_aspect).id
$execute store result score #aspects.new aspects.aspect_id run data get storage aspects:aspect_list $(new_aspect).id
## If old and new Aspects are defined and they are both the same, cancel tracking statistics for this
execute if score #aspects.old aspectlib.dummy matches 1.. if score #aspects.new aspectlib.dummy matches 1.. if score #aspects.old aspects.aspect_id = #aspects.new aspects.aspect_id run return fail
# Update new Aspect Stats
## Increase Total Picks
$scoreboard players add #aspects aspects.stats.$(new_aspect).total 1
## Increase Active Users
$scoreboard players add #aspects aspects.stats.$(new_aspect).current 1
## Update Peak Active Users
$scoreboard players operation #aspects aspects.stats.$(new_aspect).peak > #aspects aspects.stats.$(new_aspect).current
## If user picked new Aspect as their first, increase First Pick and return early
$execute if score #aspects.old aspectlib.dummy matches ..0 run return run scoreboard players add #aspects aspects.stats.$(new_aspect).first_pick 1
# Update old Aspect stats
## Increase Removed Count
$scoreboard players add #aspects aspects.stats.$(old_aspect).faded 1
## Decrease Active Users
$scoreboard players remove #aspects aspects.stats.$(old_aspect).current 1