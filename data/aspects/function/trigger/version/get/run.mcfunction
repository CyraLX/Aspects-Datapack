advancement revoke @s only aspects:trigger/version/get/run
scoreboard players enable @s aspects.version.get
scoreboard players set @s aspects.version.get 0

tag @s add version_retriever

data remove storage aspectlib:dummy text_suffix
execute if score #aspects aspects.version.is_dev matches 1 run data modify storage aspectlib:dummy text_suffix set value "-dev"

execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs, tag=!version_retriever] {"translate": "%1$s %2$s checked what version %3$s is", "color": "#aaaaaa", "with": [{"translate":"[%s]:", "color":"#f88379", "with": [{"translate": "aspects"}]}, {"selector": "@s", "color": "gold"}, {"translate": "aspects", "color":"#f88379"}]}
tellraw @s {"translate": "%1$s %2$s (Pack Format: %3$s)", "color": "#aaaaaa", "with": [{"translate":"[%s]:", "color":"#f88379", "with": [{"translate": "aspects"}]}, {"translate": "v%1$s.%2$s.%3$s%4$s", "color": "gold", "with": [{"score": {"name": "#aspects", "objective": "aspects.version.release"}}, {"score": {"name": "#aspects", "objective": "aspects.version.major"}}, {"score": {"name": "#aspects", "objective": "aspects.version.minor"}}, {"storage": "aspectlib:dummy", "nbt": "text_suffix"}]}, {"score": {"name": "#aspects", "objective": "aspects.pack_format"}, "color": "gold"}]}

tag @s remove version_retriever
