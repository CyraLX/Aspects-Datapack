# Respect Configs
execute unless score #aspects aspects.config.show_introduction matches 1.. run return fail

# Header
tellraw @s ""
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"}," ",{translate:"dataPack.aspects.version_format",with:[{score:{name:"#aspects",objective:"aspects.version.release"}},{score:{name:"#aspects",objective:"aspects.version.major"}},{score:{name:"#aspects",objective:"aspects.version.minor"}}]},"]"]}]}
# Content
$tellraw @s {translate:"dataPack.aspects.introduction",with:[{translate:"aspects",color:"#f88379"},{translate:"aspect.$(namespace).$(name)",color:"$(color)",shadow_color:$(shadow_color)},{text:"",color:"gold",italic:true,extra:[{translate:"menu.smithed.data_packs",fallback:"%s...",with:[{translate:"selectWorld.dataPacks"}]}," > ", {"translate": "aspects"}]},{translate:"menu.custom_options",color:"gold",italic:true}]}
