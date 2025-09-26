execute unless predicate aspects:aspect/elytrian/advancement/flying_marathon/should_increase run return run execute if predicate aspects:aspect/elytrian/advancement/flying_marathon/should_reset_progress run function aspects:aspect/elytrian/advancement/flying_marathon/cancel_tracking

scoreboard players add @s aspects.elytrian.advancements.flying_marathon.distance_traveled 1

execute if score @s aspects.elytrian.advancements.flying_marathon.distance_traveled matches 1 run return run advancement revoke @s only aspects:gameplay/aspect/elytrian/flying_marathon
execute if score @s aspects.elytrian.advancements.flying_marathon.distance_traveled matches 1000 run return run advancement grant @s only aspects:gameplay/aspect/elytrian/flying_marathon fly_no_elytra_milestone_1
execute if score @s aspects.elytrian.advancements.flying_marathon.distance_traveled matches 2000 run return run advancement grant @s only aspects:gameplay/aspect/elytrian/flying_marathon fly_no_elytra_milestone_2
execute if score @s aspects.elytrian.advancements.flying_marathon.distance_traveled matches 3000 run return run advancement grant @s only aspects:gameplay/aspect/elytrian/flying_marathon fly_no_elytra_milestone_3
execute if score @s aspects.elytrian.advancements.flying_marathon.distance_traveled matches 4000 run return run advancement grant @s only aspects:gameplay/aspect/elytrian/flying_marathon fly_no_elytra_milestone_4
execute if score @s aspects.elytrian.advancements.flying_marathon.distance_traveled matches 5000 run return run advancement grant @s only aspects:gameplay/aspect/elytrian/flying_marathon fly_no_elytra_milestone_5
execute if score @s aspects.elytrian.advancements.flying_marathon.distance_traveled matches 6000 run return run advancement grant @s only aspects:gameplay/aspect/elytrian/flying_marathon fly_no_elytra_milestone_6
execute if score @s aspects.elytrian.advancements.flying_marathon.distance_traveled matches 7000 run return run advancement grant @s only aspects:gameplay/aspect/elytrian/flying_marathon fly_no_elytra_milestone_7