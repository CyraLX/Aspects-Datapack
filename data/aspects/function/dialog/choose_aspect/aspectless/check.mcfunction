execute if predicate aspects:aspect/any_score run return fail
execute if predicate aspects:aspect/any run return fail

execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] [{"text":"[Aspects]: ","color":"#f88379"},{"text":"","color":"#aaaaaa","extra":[{"selector":"@s"},{"text":" is choosing their first Aspect"}]}]
return run function aspects:dialog/choose_aspect/open_menu
