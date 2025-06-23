advancement revoke @s only aspects:essence_cage/consume_awakened_cage/elytrian

# Set Aspect
function aspects:aspect/elytrian/activate

# Perform generic logic
function aspects:essence_cage/activate_aspect/generic with entity @s equipment.body.components."minecraft:custom_data".aspects
