# Create scoreboards to hold an ID of the Aspect
scoreboard objectives add aspects.aspect_id dummy
scoreboard objectives add aspects.choose_aspect trigger
# Create a storage list of all Aspects
function #aspects:aspect/setup_aspect_list
