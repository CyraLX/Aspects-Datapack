scoreboard players set @s aspects.feline.predator 11
function aspectlib:player/id/expose
function aspects:aspect/feline/predator/bossbar/show with storage aspectlib:dummy
function aspects:aspect/feline/predator/bossbar/set_value with storage aspectlib:dummy
item modify entity @s armor.body aspects:aspect/feline/predator/add_enchantment
