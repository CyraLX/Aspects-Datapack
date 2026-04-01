# Allows Aspect to track extended health information
# Functionality: When present, this allows for detailed tracking of HP for that Aspect. 
# Check the scoreboard objectives added by this in aspects:aspect_group/track_hp/scoreboard/ to see the things that is tracked all the time for this Aspect Group.
# Warning: This is decently resource intensive. By extend this will make having large amount of people having this Aspect at them time be intensive on the servers.
scoreboard objectives add aspects.aspect_group.track_hp dummy
function aspects:aspect_group/track_hp/logic/scoreboard/initialize
