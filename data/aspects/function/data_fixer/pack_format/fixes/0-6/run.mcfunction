# Fix Function triggering if previous Aspects Pack Format is 6 or lower
# Fixes Aspect Groups and Storage Data as they were redone in Pack Format 7 
$scoreboard players set #aspects aspectlib.dummy $(aspects_pack_format_previous)
execute unless score #aspects aspectlib.dummy matches ..6 run return fail

# Aspect Groups
## Make sure current Aspect Groups are deactivated
function #aspects:aspect_group/deactivate_all
## Force reactivate current Aspect
$function $(aspect_namespace):aspect/$(aspect_name)/reactivate

# Storage Data
## Remove legacy data
## It was already converted at the update function
function #aspectlib:storage_data/delete_legacy with storage aspectlib:dummy
