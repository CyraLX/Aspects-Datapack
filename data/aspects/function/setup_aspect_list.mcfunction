# Create scoreboards to hold an ID of the Aspect
scoreboard objectives add aspects.aspect_id dummy
scoreboard objectives add aspects.choose_aspect trigger
# Create a storage list of all Aspects
function #aspects:aspect/setup_aspect_list

# IDs:
## Aspects
# 0 > Human
# 1 > Merling
# 2 > Enderian
# 3 > Shulk
# 4 > Feline
# 5 > Infernal
# 6 > Elytrian
# 7 > Honey Bee
# 8 > Rascal
