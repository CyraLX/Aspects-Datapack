# Allow to use the Trigger
scoreboard players enable @s aspects.choose_aspect
scoreboard players set @s aspects.choose_aspect -2
advancement revoke @s only aspects:aspect/give_aspect_from_trigger
# Flag the player as requested
scoreboard players set @s aspects.dialog.menu_requested 1
# Flag that player is choosing an Aspect
scoreboard players set @s aspects.dialog.menu_open 1
# Show Dialog
execute if entity @p[tag=aspectlib.receive_logs] run tellraw @a[tag=aspectlib.receive_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," had the ", {translate:"dialog.aspects.choose_aspect",color:"gold"}, " dialog opened for them."]}
dialog show @s aspects:menu/choose_aspect

return 1