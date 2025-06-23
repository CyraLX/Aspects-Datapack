advancement revoke @s only aspects:essence_cage/consume_awakened_cage/honey_bee

# Set Aspect
function aspects:aspect/honey_bee/activate

# Perform generic logic
function aspects:essence_cage/activate_aspect/generic with entity @s equipment.body.components."minecraft:custom_data".aspects
