$execute if predicate aspectlib:random/050 run return run item modify entity @n[type=minecraft:armor_stand, tag=relic_granter, distance=..4] weapon.mainhand aspects:relic/faded/addon/random_lore/generic/$(random_1)
$item modify entity @n[type=minecraft:armor_stand, tag=relic_granter, distance=..4] weapon.mainhand aspects:relic/faded/addon/random_lore/$(aspect)/$(random_2)
