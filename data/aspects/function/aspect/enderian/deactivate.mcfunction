# Clean up before removing Aspect
function aspectlib:player_id/expose
function aspects:aspect/enderian/remove_data with storage aspectlib:dummy
# Perform generic ACTIVATE logic
function aspects:aspect/generic/deactivate
# Remove attributes granted by Aspect
function aspects:aspect/enderian/attributes/revoke_base