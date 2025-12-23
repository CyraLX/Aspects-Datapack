advancement revoke @s only aspects:item/essence_cage_awakened/consume/enderian

# Set Aspect
function aspects:aspect/enderian/activate

# Perform generic logic
function aspects:item/essence_cage_awakened/post-consume_effects with storage aspects:registry aspect."aspects:enderian"
