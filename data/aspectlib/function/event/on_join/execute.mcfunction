execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] [{"text":"[AspectLib]: ","color":"#7700A7"},{"selector":"@s","color":"#aaaaaa","extra":[{"text":" triggered "},{"text":"ON_JOIN","color":"gold"},{"text":" event"}]}]
scoreboard players add @s aspectlib.leave_game 0
scoreboard players add @s aspectlib.leave_game.last 0
function #aspectlib:event/on_join
