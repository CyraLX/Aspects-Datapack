execute if entity @p[tag=get_debug_logs_expanded] run tellraw @a[tag=get_debug_logs_expanded] [{"text":"[Aspects]: ","color":"#f88379"},{"selector":"@s","color":"#aaaaaa","extra":[{"text":" triggered "},{"text":"ON_ASPECT_CHANGE","color":"gold"},{"text":" event"}]}]
function #aspects:event/on_aspect_change
