# Base item upgrade
$item modify entity @s weapon.mainhand aspects:evergrowing_blade/upgrade/$(level)/base
# Enchantments Pattern Variants upgrade
$execute if score #aspects aspects.evergrowing_blade.level matches 2 run item modify entity @s weapon.mainhand {function:"minecraft:set_custom_data",tag:{aspects:{evergrowing_blade:{variant: $(variant)}}}}
$execute if score #aspects aspects.evergrowing_blade.level matches 2 run item modify entity @s weapon.mainhand aspects:evergrowing_blade/upgrade/2/variant/$(variant)
$execute if score #aspects aspects.evergrowing_blade.level matches 7 run item modify entity @s weapon.mainhand aspects:evergrowing_blade/upgrade/7/variant/$(variant)

# Effects
execute anchored eyes run playsound minecraft:block.bell.resonate player @a[distance=..16] ^ ^ ^-8 0.5 0.75
playsound minecraft:item.trident.hit_ground player @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:block.amethyst_block.hit player @a[distance=..16] ~ ~ ~ 1 0.75
playsound minecraft:block.sculk.spread player @a[distance=..16] ~ ~ ~ 1 0.5
execute if score #aspects aspects.evergrowing_blade.level matches 7.. run playsound minecraft:ui.toast.challenge_complete ui @s ~ ~ ~ 1 1.5 1
execute if score #aspects aspects.evergrowing_blade.level matches 7.. run playsound minecraft:ui.toast.challenge_complete ui @s ~ ~ ~ 1 0.5 1
