advancement revoke @s only aspects:trigger/aspect/check/run
scoreboard players enable @s aspect.check
scoreboard players set @s aspect.check 0

tag @s add aspects.aspect_retriever

function aspectlib:expose/player/id
function aspects:expose/aspect/from_player_id with storage aspectlib:dummy
execute if entity @p[tag=aspectlib.receive_logs] run tellraw @a[tag=aspectlib.receive_logs, tag=!aspects.aspect_retriever] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," checked their Aspect"]}
function aspects:trigger/aspect/check/open_dialog with storage aspectlib:dummy aspect

tag @s remove aspects.aspect_retriever
