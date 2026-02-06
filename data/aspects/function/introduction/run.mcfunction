# scoreboard players set @s aspects.was_introduced 1

# Header
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"}," ",{translate:"dataPack.aspects.version_format",with:[{score:{name:"#aspects",objective:"aspects.version.release"}},{score:{name:"#aspects",objective:"aspects.version.major"}},{score:{name:"#aspects",objective:"aspects.version.minor"}}]},"]"]}]}
# Content
$tellraw @s {translate:"dataPack.aspects.introduction",with:[{translate:"aspects",color:"#f88379"},{translate:"aspect.$(namespace).$(name)",color:"$(color)",shadow_color:$(shadow_color)},{translate:"dialog.aspects.pause_screen.external_title",color:"gold",italic:true},{translate:"menu.custom_options",color:"gold",italic:true}]}
