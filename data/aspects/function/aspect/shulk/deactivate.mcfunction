# Aspect specific PRE-DEACTIVATE logic
## Place down stored container
function aspects:item/focus/shulk/storage/place_down

# Generic DEACTIVATE logic
function aspects:aspect/generic/deactivate with storage aspects:registry aspect."aspects:shulk"

# Aspect specific POST-DEACTIVATE logic
## Remove attributes that were granted by the aspect
function aspects:aspect/shulk/attributes/revoke_base
