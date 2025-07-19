# Revoke the trigger advancement if this function is called through that
execute if entity @s[advancements={aspects:aspect_encyclopedia/give_aspect_picker=true}] run advancement revoke @s only aspects:aspect_encyclopedia/give_aspect_picker

data modify storage aspectlib:dummy item_modifier set value "aspects:aspect_picker"
function aspects:utility/summon_item with storage aspectlib:dummy
