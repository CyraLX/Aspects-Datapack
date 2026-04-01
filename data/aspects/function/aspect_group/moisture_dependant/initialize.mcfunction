# Creatures requiring Water Exposure to survive
# Functionality: Makes the Aspect have moisture dependency, meaning outside of water they will have a moisture meter that depletes, and when depleted it will damage them. Merling is an Example.
scoreboard objectives add aspects.aspect_group.moisture_dependant dummy
function aspects:aspect_group/moisture_dependant/logic/scoreboard/initialize
