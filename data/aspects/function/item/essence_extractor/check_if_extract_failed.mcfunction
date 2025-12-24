execute if score @s aspects.essence_extractor.has_extracted_any_essence matches ..0 run return run function aspects:item/essence_extractor/effects/extracting_failure_not_whitelisted

# Exhaust Essence from Self
scoreboard players set @s aspects.essence.exhausted 1

# Show Effects
function aspects:item/essence_extractor/effects/extracting