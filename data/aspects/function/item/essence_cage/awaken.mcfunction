# Remove the old data by replacing the item with a temporary one
item replace entity @s weapon.offhand with minecraft:stick 1

# Modify temporary item with Awakened Essence Cage by using provided data
$item modify entity @s weapon.offhand [{function:"minecraft:reference",name:"aspects:essence_cage/awakened_dummy"},{function:"minecraft:set_components",components:{"minecraft:item_model":"$(namespace):awakened_essence_cage",custom_data:{aspects:{awakened_essence_cage:{aspect:{namespace:"$(namespace)",name:"$(name)"}}}}}},{function:"minecraft:set_lore",entity:"this",mode:"replace_all",lore:[{translate:"item.aspects.awakened_essence_cage.stored_aspect",color:"gray",italic:0b,extra:[": ",{translate:"aspect.$(namespace).$(name)",color:"$(color)"}]},"",{translate:"item.modifiers.use_sneak_not",color:"gray",italic:0b},{translate:"item.aspects.awakened_essence_cage.use_result_1",with:[{translate:"aspect.$(namespace).$(name)",color:"$(color)"}],color:"blue",italic:0b},"",{translate:"item.modifiers.use_sneak",color:"gray",italic:0b},{text:"",color:"blue",italic:0b,extra:[{translate:"item.aspects.awakened_essence_cage.use_result_2",with:[{translate:"item.aspects.essence_extractor"}]}]}]}]

# Play sounds
playsound entity.zombie_villager.cure ambient @a[distance=..16] ~ ~ ~ 1 1.5
playsound entity.zombie_villager.converted ambient @a[distance=..16] ~ ~ ~ 1 0.5