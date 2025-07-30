execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] [{"text":"[AspectLib]: ","color":"#7700A7"},{"selector":"@s","color":"#aaaaaa","extra":[{"text":" triggered "},{"text":"ON_DEATH","color":"gold"},{"text":" event"}]}]
function #aspectlib:event/on_death
advancement revoke @s only aspectlib:event/on_respawn
