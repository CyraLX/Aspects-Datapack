# Aspects 1.1.3

## General Changes
- (1.21.6+) Many improvements to Aspect Dialogs to make the text more clearer
- (1.21.6+) Fixed Awakened Essence Cages in Dialogs not showing the essence color inside them
- (1.21.5) Fixed Aspect Pickers not being granted
- If a Resource Pack is now missing on the client, the datapack makes it more clear with direct messages
- When a player has an undefined Aspect, they will now have a Aspect Choosing dialog open if config `aspects.config.force_aspect_on_aspectless_players` is still `true`
- Updated to support snapshots up to 25w43a

## Aspect Changes
### Infernal
- Now gets -100% Fall Damage Multiplier when in Lava (Can Lava Bucket clutch now!)
- Gets Fire Resistance temporarely when submerged in Lava for extended Lava Vision

## Technical Changes
- Increased Pack Format to 6
- `aspectlib:bosses/minor` Entity Type tag now contains `minecraft:elder_guardian`
- Added `aspectlib:minecrat` Entity Type tag containing all minecarts
- `aspectlib:passive` Entity Type tag now contains `minecraft:skeleton_horse`
- `aspectlib.health` scoreboard has been reworked into `aspectlib.hp`
- Added multiple new scoreboards related to health under `aspectlib` namespace: `absorption`, `hp_total`, `hp_max`, `hp_relative`, `hp_relative_overflow`, `hp_relative_total`
- Fixed respawn/death events being broken when being `/kill`ed with any amount of Absorption Health
- Added `aspectlib.is_submerged_water` and `aspectlib.is_submerged_lava` scoreboard booleans and their respective predicates
- `aspectlib.is_submerged` scoreboard boolean now is true when user is submerged in any liquid
- `hydrophobic` and `moisture_dependant` Aspect Groups now are fully group driven
