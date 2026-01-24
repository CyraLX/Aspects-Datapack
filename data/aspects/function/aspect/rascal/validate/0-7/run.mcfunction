# Fix Function triggering if previous Aspects Pack Format is 7 or lower
# Fixes Missing scoreboard values for Rascal that is required for it to work properly in Pack Version 8
$scoreboard players set #aspects aspectlib.dummy $(aspects_pack_format_previous)
execute unless score #reclaimed aspectlib.dummy matches ..7 run return fail

# Make sure that...
## Player is Rascal
execute unless predicate aspects:aspect/rascal/is_active run return fail
## Apply Fix
scoreboard players set @s aspects.rascal.movement_speed_current 0
scoreboard players set @s aspects.rascal.movement_speed_target 0
