# Aspects 1.1.1

## General Changes
- Added a trigger command `/trigger aspects.version.get`, which gets the version the mod/datapack is on the server and it's pack format
- (1.21.6+) Aspect dialogs now have a badge next to focuses, stating that you do not start with a focus and need to craft one
- Updated Turkish and Lithuanian translations
- Fixed Aspects with unique items dying of suffocations rarely
- Fixed players being broken when joining a server for the first time
- Fixed Aspects not working on non-players

## Aspect Changes
### Merling
- Moisture now decreases when taking Fire damage
- Moisture now decreases when attacked with a Sponge, which turns into a Wet Sponge
- Night Vision no longer is Infinite, now it only lasts 60 seconds and must be refreshed by submerging yourself in water
### Rascal
- Now has +100% Safe Fall Distance and -30% Fall Damage Multiplier

## Technical Changes
- Added a functional Submerged predicate `aspectlib:flags/is_submerged`
- Fixed `ON RESPAWN` event triggering when the player joins the world for the first time
