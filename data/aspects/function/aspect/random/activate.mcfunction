execute store result score #aspects aspectlib.dummy run data get storage aspects:registry random_aspect_list
scoreboard players remove #aspects aspectlib.dummy 1
execute store result storage aspectlib:dummy random_aspect_list_length int 1 run scoreboard players get #aspects aspectlib.dummy
function aspects:aspect/random/roll_aspect with storage aspectlib:dummy
function aspects:aspect/random/retrieve_aspect_id with storage aspectlib:dummy
function aspects:aspect/activate_aspect_macro with storage aspectlib:dummy randomly_chosen_aspect_id
function aspects:aspect/random/retrieve_aspect_registry with storage aspectlib:dummy randomly_chosen_aspect_id
function aspects:aspect/random/print_randomly_chosen_aspect with storage aspectlib:dummy randomly_chosen_aspect_registry