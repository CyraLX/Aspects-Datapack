# After 15 seconds, remove enchantment and return
execute if predicate aspects:item/focus/oozeling/amplify_elasticity/should_revoke_enchantment run return run function aspects:item/focus/oozeling/amplify_elasticity/remove_enchantment

function aspects:item/focus/oozeling/amplify_elasticity/scoreboard/update
function aspects:item/focus/oozeling/amplify_elasticity/bossbar/update