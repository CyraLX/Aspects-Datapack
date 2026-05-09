$execute store result score #aspects aspectlib.temp run random value 1..$(aspect_list_length) aspects:aspect/randomize
scoreboard players remove #aspects aspectlib.temp 1
execute store result storage aspectlib:cache temp.aspect_list_index int 1 run scoreboard players get #aspects aspectlib.temp