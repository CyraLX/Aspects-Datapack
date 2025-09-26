advancement revoke @s only aspects:item/essence_cage/store_aspect_from_aspect/enderian

execute if predicate aspects:item/essence_cage/is_in_mainhand run return run function aspects:item/essence_cage/awaken/mainhand with storage aspects:aspect_list aspects:enderian

execute if predicate aspects:item/essence_cage/is_in_offhand run return run function aspects:item/essence_cage/awaken/offhand with storage aspects:aspect_list aspects:enderian
