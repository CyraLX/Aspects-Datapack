# Aspect specific PRE-DEACTIVATE logic
## Place down stored container
function aspects:focus/shulk/storage/place_down

# Generic DEACTIVATE logic
function aspects:aspect/generic/deactivate with storage aspects:aspect_list aspects:shulk

# Aspect specific POST-DEACTIVATE logic
## Remove attributes that were granted by the aspect
function aspects:aspect/shulk/attributes/revoke_base
