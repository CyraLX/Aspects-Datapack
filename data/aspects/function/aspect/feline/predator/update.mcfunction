# After 15 seconds, remove enchantment and return
execute if predicate aspects:aspect/feline/predator/should_revoke_enchantment run return run function aspects:aspect/feline/predator/remove_enchantment

function aspects:aspect/feline/predator/scoreboard/update
function aspects:aspect/feline/predator/bossbar/update