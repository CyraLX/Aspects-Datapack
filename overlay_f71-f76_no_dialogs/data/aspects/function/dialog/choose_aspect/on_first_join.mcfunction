function #aspects:aspect_encyclopedia

execute unless score #aspects aspects.config.force_aspect_on_aspectless_players matches 1.. run return fail
execute if predicate aspects:dialog/choose_menu/is_open run return fail
execute if predicate aspects:aspect/any_score run return fail
execute if predicate aspects:aspect/any run return fail

execute if entity @a[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] [{"text":"[Aspects] ","color":"#f88379"},{"text":"","color":"#aaaaaa","extra":[{"selector":"@s"},{"text":" is choosing their first Aspect"}]}]
function aspects:dialog/choose_aspect/open_menu
