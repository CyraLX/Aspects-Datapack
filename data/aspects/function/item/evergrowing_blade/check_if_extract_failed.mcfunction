execute if score @s aspects.evergrowing_blade.has_extracted_any_essence matches ..0 run return run function aspects:item/evergrowing_blade/effects/extracting_failure_not_whitelisted

# Exhaust Essence from Self
scoreboard players set @s aspects.essence.exhausted 1

# Show Effects
function aspects:item/evergrowing_blade/effects/extracting