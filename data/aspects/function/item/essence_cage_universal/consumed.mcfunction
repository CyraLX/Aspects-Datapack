advancement revoke @s only aspects:item/essence_cage_universal/consume

scoreboard players set @s aspects.essence_cage_universal.was_used 1

function aspectlib:player/id/expose
function aspects:expose/aspect/registry_from_player_id with storage aspectlib:dummy
function aspects:aspect/generic/remove_old_aspect with storage aspectlib:dummy aspect
function aspects:dialog/choose_aspect/open_menu
