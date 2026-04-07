# Give temporary tag
tag @s add aspects.stats_retriever
# Give feedback in chat
$execute if entity @p[tag=aspectlib.receive_logs] run tellraw @a[tag=aspectlib.receive_logs, tag=!aspects.stats_retriever] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," is viewing statistics for ",{translate:"dialog.aspects.chosen_aspect.external_title",color:"gray",with:[{translate:"$(namespace)",color:"blue"},{translate:"aspect.$(namespace).$(name)",color:"$(color)",shadow_color:$(shadow_color)}]}]}
$tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},"Statistics for ",{translate:"dialog.aspects.chosen_aspect.external_title",color:"gray",with:[{translate:"$(namespace)",color:"blue"},{translate:"aspect.$(namespace).$(name)",color:"$(color)",shadow_color:$(shadow_color)}]}]}
$tellraw @s {text:"| ",color:"#aaaaaa",extra:[{translate:"scoreboard.aspects.aspect_stats.total"},": ",{score:{name:"#$(namespace):$(name)",objective:"aspects.aspect_stats.total"},color:"gold"}]}
$tellraw @s {text:"| ",color:"#aaaaaa",extra:[{translate:"scoreboard.aspects.aspect_stats.faded"},": ",{score:{name:"#$(namespace):$(name)",objective:"aspects.aspect_stats.faded"},color:"gold"}]}
$tellraw @s {text:"| ",color:"#aaaaaa",extra:[{translate:"scoreboard.aspects.aspect_stats.active"},": ",{score:{name:"#$(namespace):$(name)",objective:"aspects.aspect_stats.active"},color:"gold"}]}
$tellraw @s {text:"| ",color:"#aaaaaa",extra:[{translate:"scoreboard.aspects.aspect_stats.active_peak"},": ",{score:{name:"#$(namespace):$(name)",objective:"aspects.aspect_stats.active_peak"},color:"gold"}]}
$tellraw @s {text:"| ",color:"#aaaaaa",extra:[{translate:"scoreboard.aspects.aspect_stats.first_pick"},": ",{score:{name:"#$(namespace):$(name)",objective:"aspects.aspect_stats.first_pick"},color:"gold"}]}
$tellraw @s {text:"| ",color:"#aaaaaa",extra:[{translate:"scoreboard.aspects.aspect_stats.focus_uses"},": ",{score:{name:"#$(namespace):$(name)",objective:"aspects.aspect_stats.focus_uses"},color:"gold"}]}
# Cleanup
tag @s remove aspects.stats_retriever
