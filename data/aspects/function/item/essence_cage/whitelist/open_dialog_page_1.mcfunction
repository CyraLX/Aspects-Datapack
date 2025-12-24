execute unless predicate aspects:item/essence_cage/is_in_mainhand run return fail
scoreboard players set @s aspects.essence_cage.whitelist.dialog.page_1 -1
scoreboard players enable @s aspects.essence_cage.whitelist.dialog.page_1
advancement revoke @s only aspects:item/essence_cage/whitelist/page_1
dialog show @s aspects:item/essence_cage/whitelist_page_1