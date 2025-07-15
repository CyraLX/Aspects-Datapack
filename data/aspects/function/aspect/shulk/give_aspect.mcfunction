# Aspect specific PRE-GIVE_ASPECT logic

# Generic GIVE_ASPECT logic
function aspects:aspect/generic/give_aspect with storage aspects:aspect_list aspects:shulk

# Aspect specific POST-GIVE_ASPECT logic
## Grant attributes
function aspects:aspect/shulk/attributes/grant_base
## Reset Shell timer
scoreboard players set @s aspects.shulk.shell_timer 0



