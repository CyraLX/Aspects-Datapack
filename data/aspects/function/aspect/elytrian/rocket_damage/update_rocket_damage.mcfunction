execute if predicate aspectlib:flags/is_flying if score @s aspects.elytrian.wings.used_rockets.last < @s aspects.elytrian.wings.used_rockets run item modify entity @s armor.chest aspects:aspect/elytrian/wings/rocket_damage
scoreboard players operation @s aspects.elytrian.wings.used_rockets.last = @s aspects.elytrian.wings.used_rockets
