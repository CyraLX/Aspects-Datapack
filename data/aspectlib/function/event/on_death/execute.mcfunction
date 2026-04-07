execute if entity @p[tag=aspectlib.receive_logs] run tellraw @a[tag=aspectlib.receive_logs] {text:"",color:"#aaaaaa",extra:[{"text":"[AspectLib]: ","color":"#7700A7"},{selector:"@s",color:"gold"},{"text":" triggered "},{"text":"ON_DEATH","color":"gold"},{"text":" event"}]}
function #aspectlib:event/on_death
advancement revoke @s only aspectlib:event/on_respawn
