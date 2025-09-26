execute unless predicate aspects:item/focus/shulk/held_item_placable run return run playsound entity.ender_eye.death player
execute align xyz run kill @n[distance=..0.1,tag=aspects.focus.shulk.camouflage]
execute align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["this","aspects.focus.shulk.camouflage"]}
execute align xyz run summon armor_stand ~ ~ ~ {Tags:["aspects.focus.shulk.camouflage"],Invisible:1b,Marker:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:jigsaw",components:{"minecraft:item_model":"minecraft:air",enchantments:{"aspects:focus/shulk/camouflage/check_and_destroy":1}}}}}
execute align xyz run data modify entity @n[distance=..0.1,tag=this] block_state.Name set from entity @s SelectedItem.id
execute as @n[distance=..0.1,tag=this] run tag @s remove this
