# Reset Effects
function aspects:aspect/arachnid/climb/remove_effects
function aspects:aspect/arachnid/climb/set_flags/all
function aspects:aspect/arachnid/climb/attribute/remove


# Return early if not touching wall or ceiling
execute unless predicate aspects:aspect/arachnid/climb/is_touching_any run return fail

# Up
execute if predicate aspects:aspect/arachnid/climb/state/up run return run effect give @s minecraft:levitation 1 1 true
# Down
execute if predicate aspects:aspect/arachnid/climb/state/down run return run effect give @s minecraft:slow_falling 1 1 true
# Hold
execute if predicate aspects:aspect/arachnid/climb/state/hold run return run function aspects:aspect/arachnid/climb/attribute/apply


