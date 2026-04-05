# Mark as player not viewing the dialog
scoreboard players set @s aspects.dialog.menu_open 0

# First check if the player is without an Aspect
execute if function aspects:dialog/choose_aspect/aspectless/check run return 1
# Otherwise check if the player has an undefined aspect (missing in `aspects:aspect_list` storage)
execute if function aspects:dialog/choose_aspect/undefined/check run return 1
