scoreboard players set @s aspects.essence_cage.clean.use_timer 0
execute unless predicate aspects:item/essence_cage/is_in_mainhand run return run playsound minecraft:entity.ender_eye.death player @s

# Copy existing Aspects data from held cage
data modify storage aspectlib:dummy essence_cage set from entity @s SelectedItem.components."minecraft:custom_data".aspects.essence_cage
# Remove existing essences
data remove storage aspectlib:dummy essence_cage.stored_essences
# Clean cage with modified data
item modify entity @s weapon.mainhand aspects:essence_cage/empty/copy_from_storage
# Update Item
function aspects:item/essence_cage/lore/mainhand/update

# Sounds
playsound minecraft:particle.soul_escape player @a[distance=..16] ~ ~ ~ 1 0.7
playsound minecraft:item.bucket.fill player @a[distance=..16] ~ ~ ~ 1 0.5
