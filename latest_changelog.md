# Aspects 1.3.0

## Overview
- Removed Minecraft 1.21.5 support due to the lack of Dialogs.
- Updated to support up to 26.1 snapshot 7.
- Added Rotten and Arachnid Aspects.
- Reworked the Essence system.
- > Essence Cleaner is now built into Essence Cages.
- > Essence Extractor is redone into an Evergrowing Blade and is now a requirement for Essence Extraction.
- On the Aspect Picking screen you can now select to become a Random Aspect (Exceptions may apply).
- Modification Configurations are now visible in the Pause Menu.

## General Changes
- Updated Lithuanian Translations.
- Added more Aspect Advancements.
- Retouched colors of some Aspects for readability.
- The modification now will introduce the player to the Pause Menu when an Aspect is selected for the first time.
- Added a new trigger command `/trigger aspect.check`, which will tell you what Aspect you are.

## Item Changes
- Essence Cleaner has been combined with Essence Cages (Existing items will become invalid).
- Essence Extractor has been redone into an Evergrowing Blade (Existing items will become invalid).
- Evergrowing Blade has been added that will act as the Essence Extractor did.
- > This weapon can also evolve with kills, gaining damage, enchantments and visual changes.
- > Can be repaired using Amethyst Shards
- Essence Cages no longer can store essences by themselves, kills or uses MUST come from the Evergrowing Blade.
- Essence Cage (Collector) was added that also stores Essences, but cannot evolve into an Aspect.
- Essence Cage (Normal and Collector) can now have a Whitelist of Essences be applied to them, letting players to control what Essences are allowed in the cage, hence preventing accidental awakenings.
- Essence Cage (Chaotic) was added that grants a random Aspect.
- > This is a creative only item and cannot be obtained.
- All Essence Cage textures have been redone or adjusted.

## Aspect Additions
### Rotten
> Undead and rotten to the core, they are more docile and command Zombified Piglin, causing confusion among their hivemind.
- Cannot drown, but is vulnerable to Smite.
- Weaker in sunlight and when unprovoked.
- Much slower in water, but has natural armor.
- Focus can summon multiple Zombified Piglin, which will die trying to protect you, even if the target is themselves...
### Arachnid
> The agile arthropods that are masters of climbing and weaving. Do not forget to look up, who knows what might be lurking there...
- Is vulnerable to Bane of Arthropods and has less health.
- Jumps higher and can land safely from higher distances.
- Can climb almost any surface as if it was a ladder.
- Can also climb across ceilings.
- Gains resistance while inside cobwebs.
- Focus can create/remove a set of cobwebs on you.
- (26.1+) Focus can also launch you from scaled walls in a viewing direction.

## Aspect Changes
### Merling
- (1.21.11+) Mounting Nautilus now removes mining speed penalty that occours when not grounded.
- (1.21.10 and below) Fixed Focus doing nothing.
- Their Focus can now retune Conduits to work on land.
- Water Breathing no longer stops damage when Moisture is empty.
- > Water Breathing still prevents natural reduction of Moisture, but does not help against fire or sponges.
- Conduit Power and Breath of The Nautilus now acts like Water Breathing for them.
### Feline
- No longer has Fall Damage immunity.
- > Instead it now has a 24 Block Safe Fall Distance.
- > This new mechanic still is vulnerable to Pointed Dripstone.
### Rascal
- Light movement buff/debuff now is applied and removed more smoothly.
### Infernal
- No longer cooks raw food in full stacks, instead it is limited to 16 at most.
- Can now cook raw food using both hands.
### Honey Bee
- (26.1+) Golden Dandelion is a Golden Dandelion that provides saturation just like a normal Dandelion, which is not golden.

## Technical Changes
- Increased Pack Format to `8`.
- Moisture no longer ticks when in Creative.
- Rewritten configs to use Dialogs instead.
- Reverted Health trackers to the old scoreboard system for optimization.
- > The more advanced one can still be used, but only per-Aspect basis via `track_hp` Aspect Group.
- Removed `aspectlib:is_on_fire_with_visual` Entity Predicate Flag.
- Changed most distance checks to be 16 block in radius for consistency.
- Hardened Datapack validation.
- > It will no longer apply datafixers if dependancies are missing or wrong versions.
- Added a lot of dimension specific flags to `aspectlib`.
- Added a lot of block tags to `aspectlib`.
- Username datafixer now clears critical scores of the old username.
- Better support for the `c` namespace.
- Added `enderian.teleport_forward_distance` and `enderian.teleport_downward_distance` configs that let operators change how far Enderian can teleport by using their focus.
- Removed `force_aspect_on_aspectless_players` and `kill_dropped_aspect_item` configs as they were there for legacy reasons and no longer serve a purpose and will actively damage the modification.
