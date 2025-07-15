# Aspect specific PRE-ACTIVATE logic
## Assign scoreboard value if not present
execute unless score @s aspects.focus.shulk.has_storage = @s aspects.focus.shulk.has_storage run scoreboard players set @s aspects.focus.shulk.has_storage 0


# Generic ACTIVATE logic
function aspects:aspect/generic/activate with storage aspects:aspect_list aspects:shulk

# Aspect specific POST-ACTIVATE logic

