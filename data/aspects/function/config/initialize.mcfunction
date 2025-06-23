# Define scoreboards
## Should reward players with a Faded Relic based on their old Aspect when swiching Aspects
## Default: 1 (true)
scoreboard objectives add aspects.config.reward_faded_relic dummy
## When a Player kills an Aspect, should they drop a Shattered Relic
## Default: 1 (true)
scoreboard objectives add aspects.config.player_kills_reward_shattered_relic dummy
## When a Player Aspect dies, should they drop the Aspect Item that was equipped on them
## (This is a bug fix regarding `minecraft:prevent_equipment_drop` not functioning correctly` in versions 1.21.5 or lower)
## Default: 1 (true)
scoreboard objectives add aspects.config.kill_dropped_aspect_item dummy
## Should update statistics tracked by Aspects such as Aspect pick count, remove count, active count, ect...
## (If turned off and turned on again later, statistics WILL desync! Only turn off if you intent to keep it that way permanently or need to test something for a brief period)
## Default: 1 (true)
scoreboard objectives add aspects.config.track_statistics dummy
## Should players without an Aspect forcfully open a new Aspect Choosing dialog
## (Functional on 1.21.6+ only!)
## Default: 1 (true)
scoreboard objectives add aspects.config.force_aspect_on_aspectless_players dummy
## Should players without an Aspect be invisible
## (Functional on 1.21.6+ only!)
## Default: 1 (true)
scoreboard objectives add aspects.config.aspectless_players_invisible dummy
## Should players without an Aspect be invincible
## (Functional on 1.21.6+ only!)
## Default: 1 (true)
scoreboard objectives add aspects.config.aspectless_players_invincible dummy

# Default scoreboards to default values if unset
execute unless score #aspects aspects.config.reward_faded_relic = #aspects aspects.config.reward_faded_relic run scoreboard players set #aspects aspects.config.reward_faded_relic 1
execute unless score #aspects aspects.config.player_kills_reward_shattered_relic = #aspects aspects.config.player_kills_reward_shattered_relic run scoreboard players set #aspects aspects.config.player_kills_reward_shattered_relic 1
execute unless score #aspects aspects.config.kill_dropped_aspect_item = #aspects aspects.config.kill_dropped_aspect_item run scoreboard players set #aspects aspects.config.kill_dropped_aspect_item 1
execute unless score #aspects aspects.config.track_statistics = #aspects aspects.config.track_statistics run scoreboard players set #aspects aspects.config.track_statistics 1
execute unless score #aspects aspects.config.force_aspect_on_aspectless_players = #aspects aspects.config.force_aspect_on_aspectless_players run scoreboard players set #aspects aspects.config.force_aspect_on_aspectless_players 1
execute unless score #aspects aspects.config.aspectless_players_invisible = #aspects aspects.config.aspectless_players_invisible run scoreboard players set #aspects aspects.config.aspectless_players_invisible 1
execute unless score #aspects aspects.config.aspectless_players_invincible = #aspects aspects.config.aspectless_players_invincible run scoreboard players set #aspects aspects.config.aspectless_players_invincible 1
