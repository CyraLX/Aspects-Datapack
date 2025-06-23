# Must run it 1 tick before the check happens
scoreboard players set @s aspectlib.is_in_water 0
advancement revoke @s only aspectlib:predicate/is_in_water
advancement revoke @s only aspectlib:predicate/is_in_water_checked
