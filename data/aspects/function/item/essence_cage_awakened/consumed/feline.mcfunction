advancement revoke @s only aspects:item/essence_cage_awakened/consume/feline

# Set Aspect
function aspects:aspect/feline/activate

# Perform generic logic
function aspects:item/essence_cage_awakened/post-consume_effects with storage aspects:registry aspect."aspects:feline"
