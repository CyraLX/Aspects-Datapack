# Aspects 1.1.2

## General Changes
- Added `focus_uses` statistic which tracks how many times a Focus was used per Aspect. This is not retroactive.

## Aspect Changes
### Infernal
- Now gets -20% Attack Speed when not On Fire
- Cooks food every 12s instead of 8s
### Merling
- Fixed Moisture not working with Infinite Water Breathing
### Elytrian
- Flying Marathon advancement now will not count if the Elytrian is in fluid

## Technical Changes
- Moved `aspects:util/summon_item` function to `aspectlib:debug/summon_item_macro`
- Added `minecraft:end_crystal` to `aspectlib:non-living` entity type tag
- Added many missing water blocks in `aspectlib:is_water` block tag
- Refractored log functions to `aspectlib:debug/log/toggle_<basic|expanded>`
- Seperated boss entity type tags to `aspectlib:bosses/<minor|major|any>`
- Username change amount is now tracked in Player Storage at `aspectlib.player.username_changes`
- Pack format fixes macro tag now prefix the namespace of the addon for pack format fields
- Most item related entries (except `enchantments`, `item_modifiers`, `recipes` and most tags) are now stored in an `item` directory
- Added `inverted_healing_and_harm` Aspect Group (used for addons that use mods to invert healing and harm from potions so they can mark it for predicate detection)
