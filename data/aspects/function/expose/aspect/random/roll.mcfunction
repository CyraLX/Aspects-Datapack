$execute store result score #aspects aspectlib.dummy run random value 1..$(aspect_list_length) aspects:aspect/randomize
scoreboard players remove #aspects aspectlib.dummy 1
execute store result storage aspectlib:dummy aspect_list_index int 1 run scoreboard players get #aspects aspectlib.dummy