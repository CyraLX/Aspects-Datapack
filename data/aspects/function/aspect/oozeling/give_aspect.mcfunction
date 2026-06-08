# Aspect specific PRE-GIVE_ASPECT logic

# Generic GIVE_ASPECT logic
function aspects:aspect/generic/give_aspect with storage aspectlib:registry aspect[{namespace: "aspects", name: "oozeling"}]

# Aspect specific POST-GIVE_ASPECT logic
## Remove "Amplify Elasticity"
execute if predicate aspects:item/focus/oozeling/amplify_elasticity/is_active run function aspects:item/focus/oozeling/amplify_elasticity/remove_enchantment
