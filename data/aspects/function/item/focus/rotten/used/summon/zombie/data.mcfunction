# Add tag
tag @s add aspects.rotten.summon
tag @s add aspects.rotten.summoned_temp
tag @s add aspects.rotten.summon_recent
# Apply NBT data
$data modify entity @s CustomName set value {translate:"entity.aspects.rotten_summon",color:"$(rotten_color)",shadow_color:$(rotten_shadow_color),with:["$(username)",{translate:"entity.minecraft.zombified_piglin"}]}
data modify entity @s CustomNameVisible set value false
data modify entity @s DeathLootTable set value "aspects:entity/rotten_summon"
data modify entity @s drop_chances set value {body:0,chest:0,feet:0,head:0,legs:0,mainhand:0,offhand:0,saddle:0}
data modify entity @s CanPickUpLoot set value false
data modify entity @s CanBreakDoors set value true
data modify entity @s PersistenceRequired set value false
data modify entity @s equipment set value {}
data modify entity @s active_effects set value [{id:"minecraft:slowness",amplifier:9,duration:10,show_particles:false,show_icon:false},{id:"minecraft:instant_damage",amplifier:9,duration:10,show_particles:false,show_icon:false}]
# data modify entity @s home_pos set from entity @s Pos
# data modify entity @s home_radius set value 16
execute store result entity @s data.aspects.variant int 1 run scoreboard players get #aspects aspectlib.dummy
scoreboard players operation @s aspects.aspect.rotten.summon_variant = #aspects aspectlib.dummy
data modify entity @s data.aspects.owner.UUID set from storage aspectlib:dummy uuid
data modify entity @s data.aspects.owner.ID set from storage aspectlib:dummy id
execute store result score @s aspects.aspect.rotten.summon_owner_id run data get storage aspectlib:dummy id

# Set aggro to target
execute if data storage aspectlib:dummy target_UUID run function aspects:item/focus/rotten/used/summon/zombie/make_angry

# Random chance baby
execute store result score #aspects aspectlib.dummy run random value 1..100 aspects:rotten/summon/zombie/summon_baby
execute if score #aspects aspectlib.dummy matches 1 run function aspects:item/focus/rotten/used/summon/zombie/baby
# Give random weapon
function aspects:item/focus/rotten/used/summon/zombie/random_weapon

# Change attributes
attribute @s minecraft:max_health modifier add aspects:rotten/summon/max_health -0.2 add_multiplied_base
attribute @s minecraft:armor_toughness modifier add aspects:rotten/summon/armor_toughness 8 add_value
attribute @s minecraft:movement_speed modifier add aspects:rotten/summon/movement_speed 0.1 add_multiplied_base
attribute @s minecraft:attack_damage modifier add aspects:rotten/summon/attack_damage 4 add_value
attribute @s minecraft:step_height modifier add aspects:rotten/summon/step_height 0.5 add_value
attribute @s minecraft:jump_strength modifier add aspects:rotten/summon/jump_strength 0.5 add_multiplied_base
attribute @s minecraft:safe_fall_distance modifier add aspects:rotten/summon/safe_fall_distance 0.5 add_multiplied_base
