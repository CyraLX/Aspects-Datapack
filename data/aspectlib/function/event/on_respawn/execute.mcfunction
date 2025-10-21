scoreboard players set @s aspectlib.death 0
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{"text":"[AspectLib]: ","color":"#7700A7"},{selector:"@s",color:"gold"},{"text":" triggered "},{"text":"ON_RESPAWN","color":"gold"},{"text":" event"}]}
function #aspectlib:event/on_respawn
advancement revoke @s only aspectlib:event/on_death
