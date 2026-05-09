# Exposes the namespaced name of the Aspect from List
data remove storage aspectlib:cache temp.aspect
data remove storage aspectlib:cache temp.aspect_list
data remove storage aspectlib:cache temp.aspect_list_length
data remove storage aspectlib:cache temp.aspect_list_index

# Get random aspect list and select a random one from that list
data modify storage aspectlib:cache temp.aspect_list append from storage aspectlib:registry aspect[{prevent_random: false}]
execute store result storage aspectlib:cache temp.aspect_list_length int 1 run data get storage aspectlib:cache temp.aspect_list
function aspects:expose/aspect/random/roll with storage aspectlib:cache temp
function aspects:expose/aspect/random/retrieve_macro with storage aspectlib:cache temp
