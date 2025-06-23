scoreboard players set @s aspectlib.death 0
execute if entity @a[tag=get_debug_logs_expanded] run tellraw @a[tag=get_debug_logs_expanded] [{"text":"[AspectLib] ","color":"#7700A7"},{"selector":"@s","color":"#aaaaaa","extra":[{"text":" triggered "},{"text":"ON_RESPAWN","color":"gold"},{"text":" event"}]}]
function #aspectlib:event/on_respawn
advancement revoke @s only aspectlib:event/on_death
