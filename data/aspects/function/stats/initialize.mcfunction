# Total amount of changes to an Aspect
scoreboard objectives add aspects.aspect_stats.total dummy
scoreboard objectives modify aspects.aspect_stats.total displayname {translate: "scoreboard.aspects.aspect_stats.total"}
# Times an Aspect was switched off from
scoreboard objectives add aspects.aspect_stats.faded dummy
scoreboard objectives modify aspects.aspect_stats.faded displayname {translate: "scoreboard.aspects.aspect_stats.faded"}
# Currently active users with an Aspect
scoreboard objectives add aspects.aspect_stats.active dummy
scoreboard objectives modify aspects.aspect_stats.active displayname {translate: "scoreboard.aspects.aspect_stats.active"}
# Highest recorded active users of an Aspect
scoreboard objectives add aspects.aspect_stats.active_peak dummy
scoreboard objectives modify aspects.aspect_stats.active_peak displayname {translate: "scoreboard.aspects.aspect_stats.active_peak"}
# Times an Aspect was picked as their first choice
scoreboard objectives add aspects.aspect_stats.first_pick dummy
scoreboard objectives modify aspects.aspect_stats.first_pick displayname {translate: "scoreboard.aspects.aspect_stats.first_pick"}
