advancement revoke @s only aspects:item/essence_cage_awakened/consume/honey_bee

# Set Aspect
function aspects:aspect/honey_bee/activate

# Perform generic logic
function aspects:item/essence_cage_awakened/post-consume_effects with storage aspects:registry aspect."aspects:honey_bee"
