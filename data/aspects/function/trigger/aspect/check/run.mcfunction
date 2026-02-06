advancement revoke @s only aspects:trigger/aspect/check/run
scoreboard players enable @s aspect.check
scoreboard players set @s aspect.check 0

tag @s add version_retriever

function aspectlib:player/id/expose
function aspects:aspect/expose_aspect with storage aspectlib:dummy
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs, tag=!version_retriever] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," checked their Aspect"]}
function aspects:trigger/aspect/check/print with storage aspectlib:dummy aspect

tag @s remove version_retriever
