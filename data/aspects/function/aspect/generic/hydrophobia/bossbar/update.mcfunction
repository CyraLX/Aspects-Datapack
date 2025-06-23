# Get ID for the Bossbar
function aspectlib:player_id/expose

# Don't run if you do not have Water Ward and hide the Bossbar
execute unless predicate aspects:enchantment/water_ward/any run return run function aspects:aspect/generic/hydrophobia/bossbar/hide with storage aspectlib:dummy
# Update Bossbar with the Score value 
function aspects:aspect/generic/hydrophobia/bossbar/set_value with storage aspectlib:dummy
# If the Score is empty, hide the Bossbar
execute if score @s aspects.generic.hydrophobia matches ..0 run return run function aspects:aspect/generic/hydrophobia/bossbar/hide with storage aspectlib:dummy
# Otherwise show it
execute if score @s aspects.generic.hydrophobia matches 1.. run return run function aspects:aspect/generic/hydrophobia/bossbar/show with storage aspectlib:dummy
