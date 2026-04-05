# Exposes the namespaced name of the Aspect from List
data remove storage aspectlib:dummy aspect
data remove storage aspectlib:dummy aspect_list
data remove storage aspectlib:dummy aspect_list_length
data remove storage aspectlib:dummy aspect_list_index

# Get random aspect list and select a random one from that list
data modify storage aspectlib:dummy aspect_list append from storage aspects:registry aspect[{prevent_random: false}]
execute store result storage aspectlib:dummy aspect_list_length int 1 run data get storage aspectlib:dummy aspect_list
function aspects:expose/aspect/random/roll with storage aspectlib:dummy
function aspects:expose/aspect/random/retrieve_macro with storage aspectlib:dummy
