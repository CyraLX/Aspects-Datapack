# Add seperator
tellraw @s ""
# Header
tellraw @s [{"text":"[Aspects]: ","color":"#f88379"},{"text":"","color":"#aaaaaa","extra":[{"text":"REWARD_FADED_RELIC","color":"gold"}]}]
# Explanation
tellraw @s [{"text":"","color":"#aaaaaa","extra":[{"text":"> ","bold":true},{"text":"Should reward players with a Faded Relic based on their old Aspect when swiching Aspects","italic":true}]}]
tellraw @s [{"text":"","color":"#aaaaaa","extra":[{"text":"/ ","bold":true},{"text":"Default: "},{"text":"Enabled","color":"green"}]}]
# Footer
execute if score #aspects aspects.config.reward_faded_relic matches 1 run tellraw @s [{"text":"","color":"#aaaaaa","extra":[{"text":"\\","bold":true},{"text":" ","underlined":true,"extra":[{"text":"Current: "},{"text":"Enabled","color":"green"},{"text":" | ","bold":true},{"text":"Turn OFF","color":"blue","click_event":{"action":"run_command","command":"function aspects:config/toggle/reward_faded_relic"},"hover_event":{"action":"show_text","value":{"text":"Click to Turn OFF"}}},{"text":" "}]},{"text":"/","bold":true}]}]
execute if score #aspects aspects.config.reward_faded_relic matches 0 run tellraw @s [{"text":"","color":"#aaaaaa","extra":[{"text":"\\","bold":true},{"text":" ","underlined":true,"extra":[{"text":"Current: "},{"text":"Disabled","color":"red"},{"text":" | ","bold":true},{"text":"Turn ON","color":"blue","click_event":{"action":"run_command","command":"function aspects:config/toggle/reward_faded_relic"},"hover_event":{"action":"show_text","value":{"text":"Click to Turn ON"}}},{"text":" "}]},{"text":"/","bold":true}]}]
