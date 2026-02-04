# Check if conduit block is there and kill marker if not
function aspects:aspect/merling/conduit/check/conduit

# Check surrounded by water, if not, return early
execute unless function aspects:aspect/merling/conduit/check/water run return fail

# Reset conduit frame block counter
function aspects:aspect/merling/conduit/scoreboard/reset

# Count the valid blocks in the conduit frame
function aspects:aspect/merling/conduit/check/frame

# Depending on valid blocks in the frame run logic
execute if score @s aspects.aspect.merling.conduit.frame_block_count matches ..15 run return fail
execute if score @s aspects.aspect.merling.conduit.frame_block_count matches 16..21 run return run function aspects:aspect/merling/conduit/effect_range/32
execute if score @s aspects.aspect.merling.conduit.frame_block_count matches 21..27 run return run function aspects:aspect/merling/conduit/effect_range/48
execute if score @s aspects.aspect.merling.conduit.frame_block_count matches 28..34 run return run function aspects:aspect/merling/conduit/effect_range/64
execute if score @s aspects.aspect.merling.conduit.frame_block_count matches 35..41 run return run function aspects:aspect/merling/conduit/effect_range/80
execute if score @s aspects.aspect.merling.conduit.frame_block_count matches 42.. run return run function aspects:aspect/merling/conduit/effect_range/96