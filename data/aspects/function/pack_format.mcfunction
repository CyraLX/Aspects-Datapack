# Initialize our own version
scoreboard objectives add aspects.version.release dummy
scoreboard objectives add aspects.version.major dummy
scoreboard objectives add aspects.version.minor dummy
scoreboard objectives add aspects.version.is_dev dummy
# Define current version
scoreboard players set #aspects aspects.version.release 1
scoreboard players set #aspects aspects.version.major 1
scoreboard players set #aspects aspects.version.minor 2
scoreboard players set #aspects aspects.version.is_dev 0
# Initialize trigger to get current version
function aspects:trigger/version/get/initialize

# Initialize our own pack format
scoreboard objectives add aspects.pack_format dummy
scoreboard objectives add aspects.pack_format.dependency.min dummy
scoreboard objectives add aspects.pack_format.dependency.max dummy
# Define current pack format
scoreboard players set #aspects aspects.pack_format 5
