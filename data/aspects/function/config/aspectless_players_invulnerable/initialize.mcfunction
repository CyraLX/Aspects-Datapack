# When True, makes it so that Players which do not have an active Aspect become damage immune.
# Default: 1 (true)
scoreboard objectives add aspects.config.aspectless_players_invulnerable dummy
execute unless score #aspects aspects.config.aspectless_players_invulnerable = #aspects aspects.config.aspectless_players_invulnerable run scoreboard players set #aspects aspects.config.aspectless_players_invulnerable 1

# Convert old scoreboard to new one
execute if score #aspects aspects.config.aspectless_players_invincible = #aspects aspects.config.aspectless_players_invincible run scoreboard players operation #aspects aspects.config.aspectless_players_invulnerable = #aspects aspects.config.aspectless_players_invincible
scoreboard objectives remove aspects.config.aspectless_players_invincible
