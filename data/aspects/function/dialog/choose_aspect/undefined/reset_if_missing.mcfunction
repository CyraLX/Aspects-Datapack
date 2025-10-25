# Return early if current Aspect is valid
$execute if data storage aspects:registry aspect.$(namespace):$(name) run return fail
# Print logs
$execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] [{"text":"[Aspects]: ","color":"#f88379"},{"text":"","color":"#aaaaaa","extra":[{"selector":"@s"},{"text":" had an undefined Aspect "},{"text": "$(namespace):$(name)", "color": "gold"},{"text":"!\nResetting their data and opening Choose Aspect dialog..."}]}]

# Try calling undefined Aspect's deactivate function
function aspects:dialog/choose_aspect/undefined/try_deactivating with storage aspectlib:dummy aspect
# Remove data from Player Storage
$data remove storage aspectlib:player_$(id) aspects.aspect_data."$(namespace):$(name)"
$data modify storage aspectlib:player_$(id) aspects.aspect set value {}
# Reset Scoreboards
scoreboard players reset @s aspects.aspect_id
scoreboard players reset @s aspects.choose_aspect
scoreboard players reset @s aspects.dialog.choose_menu
# Open Aspect Choosing dialog
function aspects:dialog/choose_aspect/open_menu

# Return success
return 1
