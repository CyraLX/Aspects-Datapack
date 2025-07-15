# Remove the old data by replacing the item with a temporary one
item replace entity @s weapon.mainhand with minecraft:stick 1

# Modify temporary item with Awakened Essence Cage by using provided data
$item modify entity @s weapon.mainhand $(namespace):essence_cage/awakened/$(name)

# Play sounds
playsound entity.zombie_villager.cure ambient @a[distance=..16] ~ ~ ~ 1 1.5
playsound entity.zombie_villager.converted ambient @a[distance=..16] ~ ~ ~ 1 0.5