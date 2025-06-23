# Clean up before removing Aspect
function aspects:focus/shulk/storage/place_down
function aspects:aspect/shulk/remove_data with storage aspectlib:dummy
# Perform generic ACTIVATE logic
function aspects:aspect/generic/deactivate
# Remove attributes granted by Aspect
function aspects:aspect/shulk/attributes/revoke_base