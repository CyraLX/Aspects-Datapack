# Increment dummy for advancement tracking
scoreboard players add @s aspectlib.dummy 1

# Reset data
data remove storage aspectlib:dummy item
scoreboard players reset #aspects aspectlib.dummy
# Get held item
data modify storage aspectlib:dummy item set from entity @s equipment.offhand
execute store result score #aspects aspectlib.dummy run data get storage aspectlib:dummy item.count

# If held item is within stack limits, cook the entire stack
execute if score #aspects aspectlib.dummy matches ..16 run return run function aspects:aspect/infernal/cook_food/offhand/cook_stack
# Otherwise, reduce amount by the stack limit and cook the max limit amount of food
item modify entity @s weapon.offhand aspectlib:consume/16
function aspects:aspect/infernal/cook_food/offhand/cook_partial with storage aspectlib:dummy item
