# Add tag
tag @s add aspects.rotten.summon
tag @s add aspects.rotten.summoned_temp
tag @s add aspects.rotten.summon_recent
# Apply NBT data
data modify entity @s DeathLootTable set value "aspects:entity/rotten_summon"
data modify entity @s drop_chances set value {body:0,chest:0,feet:0,head:0,legs:0,mainhand:0,offhand:0,saddle:0}
data modify entity @s CanPickUpLoot set value false
data modify entity @s CanBreakDoors set value true
data modify entity @s PersistenceRequired set value false
data modify entity @s equipment set value {}
data modify entity @s active_effects set value [{id:"minecraft:slowness",amplifier:9,duration:10,show_particles:false,show_icon:false},{id:"minecraft:instant_damage",amplifier:9,duration:10,show_particles:false,show_icon:false}]
# data modify entity @s home_pos set from entity @s Pos
# data modify entity @s home_radius set value 16
data modify entity @s data.aspects.owner set from storage aspectlib:dummy owner_UUID

# Set aggro to target
execute if data storage aspectlib:dummy target_UUID run function aspects:item/focus/rotten/used/zombie_make_angry

# Random chance baby
execute store result score #aspects aspectlib.dummy run random value 1..100 aspects:rotten/zombie_summon_baby
execute if score #aspects aspectlib.dummy matches 1 run function aspects:item/focus/rotten/used/zombie_baby
# Give random weapon
function aspects:item/focus/rotten/used/zombie_random_weapon

# Change attributes
attribute @s minecraft:movement_speed modifier add aspects:rotten/summon_movement_speed 0.1 add_multiplied_base
attribute @s minecraft:attack_damage modifier add aspects:rotten/summon_attack_damage 2 add_value
