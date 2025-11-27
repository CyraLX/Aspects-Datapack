# Aspects 1.2.0

## General Changes
- Updated to support 1.21.11 fully
- (1.21.6+) More improvements to Aspect Dialogs to make the text more clearer
- Added an unobtainable Universal Essence Cage which allows to pick any aspect when used, it is considered a creative item and requires a recipe datapack to become obtainable
- Version triggers changed from `<namespace>.version.get` to `version.<namespace>`
- Faded Aspect relic's textures have been remade

## Aspect Changes
### Elytrian
- Thanks to `maskedwatercress` for contributing to redoing 5 wing designs, along with 11 new ones!
- This Aspect now has 16 unique wing patterns to match dye. Existing users can use dyes to swap our their natural pattern
### Feline
- (1.21.11+) Focus has been remade so it can also be used mid-air and properls you in a direction you are looking
### Infernal
- Now uses `damage_immune` instead of `location_changed` along with attributes to nulify fall damage in lava for better consistency

## Technical Changes
- Increased Pack Format to `7`
- 1.21.11 uses the more efficient `is_in_water` predicate flag for water detection along with hard-coded blocks like the `water_cauldron`
- Following systems were redone: Aspect Groups, Configs, Aspect Registry, Player Storage Data
- Refractored `player_kills_reward_shattered_relic`, `fire_based` and `ice_based` Aspect Groups into `reward_shattered_relic`, `fire_natural` and `cold_natural` respectively
- Added `winged`, `coldproof`, `inverted_breathing` Aspect Groups
- Added `extreme_hydrophobia` and `extreme_dehydration` Aspect Groups that double the amount of damage their respective groups will do
- Added more and improved existing loggers
- Added `has_passenger_or_vehicle` predicate to `aspectlib`
- Added `is_sleeping` predicate flag to `aspectlib`
- Added `debug/swap_to_previous_aspect` function to `aspects`
- Added `aspect_unique` enchantment tag to `aspects`
- Added `consume/16` to `aspectlib` item modifiers
- Added dimension predicates to `aspectlib`
- `aspectlib:equipment/has_elytra` predicate uses `#aspectlib:equipment/elytra` now
- Added `is_fall_flying`, `is_in_rain`, `is_in_water`, `is_invincible`, `is_invulnerable` and `is_wet` to `aspectlib` predicates
- Added `fire_resistance` and `resistance` status effect predicates to `aspectlib`
- Added `contains_water` block tag in `aspectlib` which is used in `is_water` block tag
- Added `is_water` damage type tag to `aspects`
- Fixed many scoreboard based predicates not reseting on death
- Fixed username changes breaking everything
- Fixed `is_alive` predicate flag being true before `ON_RESPAWN` event is called
- Unique Aspect items are now deleted from player hands if in survival scenarios
- All technical advancements now have a root parent for each namespace to link them all together 