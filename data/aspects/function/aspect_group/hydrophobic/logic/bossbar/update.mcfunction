# Get ID for the Bossbar
function aspectlib:player/id/expose

# Don't run if you do not have Water Ward and hide the Bossbar
execute unless predicate aspects:enchantment/water_ward/any run return run function aspects:aspect_group/hydrophobic/logic/bossbar/hide with storage aspectlib:dummy
# If the hydrophobia is full, hide the Bossbar
execute if score @s aspects.aspect_group.hydrophobic.current matches 300.. run return run function aspects:aspect_group/hydrophobic/logic/bossbar/hide with storage aspectlib:dummy
# Otherwise update bossbar with hydrophobia score and show it
function aspects:aspect_group/hydrophobic/logic/bossbar/set_value with storage aspectlib:dummy
function aspects:aspect_group/hydrophobic/logic/bossbar/show with storage aspectlib:dummy
