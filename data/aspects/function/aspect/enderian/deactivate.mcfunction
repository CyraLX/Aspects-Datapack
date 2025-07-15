# Aspect specific PRE-DEACTIVATE logic

# Generic DEACTIVATE logic
function aspects:aspect/generic/deactivate with storage aspects:aspect_list aspects:enderian

# Aspect specific POST-DEACTIVATE logic
## Remove attributes that were granted by the aspect
function aspects:aspect/enderian/attributes/revoke_base