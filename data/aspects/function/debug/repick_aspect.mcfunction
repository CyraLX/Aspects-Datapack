# Remove active Aspect
function #aspects:aspect/generic_remove with entity @s equipment.body.components.minecraft:custom_data.aspects
# Make sure to clean up from Aspect
function aspects:aspect/generic/deactivate

# Reset Scoreboards
scoreboard players reset @s aspects.aspect_id
scoreboard players reset @s aspects.choose_aspect
scoreboard players reset @s aspects.dialog.choose_menu

# Reset trigger requirements
advancement revoke @s only aspects:aspect/give_aspect_from_trigger

# Opens the Menu
function aspects:dialog/choose_aspect/open_menu