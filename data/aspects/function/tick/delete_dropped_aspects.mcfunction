execute if entity @p[tag=get_debug_logs_expanded] run tellraw @a[tag=get_debug_logs_expanded] [{"text":"[Aspects]: ","color":"#f88379"},{"text":"Item ","color":"#aaaaaa","extra":[{"selector":"@s","color":"gold"},{"text":" was deleted nearby "},{"selector":"@p"}]}]
kill @s
