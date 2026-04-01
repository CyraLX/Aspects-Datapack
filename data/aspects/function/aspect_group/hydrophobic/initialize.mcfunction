# Creatures harmed by Water
# Functionality: Makes the Aspect take damage by touching water. Water Ward Enchantment temporarily supprasses this damage.
scoreboard objectives add aspects.aspect_group.hydrophobic dummy
function aspects:aspect_group/hydrophobic/logic/scoreboard/initialize
