# Set Aspect
$function $(namespace):aspect/$(name)/activate

# Perform generic logic
$function aspects:item/essence_cage_awakened/post-consume_effects with storage aspects:registry aspect."$(namespace):$(name)"
