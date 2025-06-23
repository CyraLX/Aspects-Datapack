# Aspects v1 | A Minecraft Datapack about Powers

A datapack inspired by the [Origins](https://modrinth.com/mod/origins) mod that introduces unique Aspects, each with distinct advantages and disadvantages.

## Requirements

- **Minecraft Version**: 1.21.5+

## Optional

- None

## Developer Guide

### Reference the Datapack

Before making any additions/changes, thoroughly review the entire datapack. While this may take some time, understanding how it works is crucial. This ensures you avoid creating duplicate code, introducing breaking changes, or overlooking existing predicates/functions/advancements.

### Using Custom Namespaces

To use a custom namespace instead of `aspects` (recommended), ensure your namespace links to `aspects` or `aspectlib` where necessary. For example, events should be linked as follows:

```
<aspectlib or aspects>:event/<event_name>
```

### Adding a New Aspect

While doing these, heavily suggest you to check another Aspect and reference it.
Follow these steps to add a new Aspect:

#### 1. **Create and add the `setup_aspect` function to the [Setup Aspect List Tag](./data/aspects/tags/function/aspect/setup_aspect_list.json)**

You must give it a unique `name` and `id`, you should add a `translatable`, but it is not required.
`name` and `id` will need to be used later on.

```
<namespace>:aspect/<name>/setup_aspect.mcfunction
```

```mcfunction
data modify storage aspects:aspect_list <name> set value {id: <id>, name: "<name>", translatable: "aspects.<name>"}
```

[Example Setup Aspect Function](./data/aspects/function/aspect/human/setup_aspect.mcfunction)

Then add this Function into [Setup Aspect List Tag](./data/aspects/tags/function/aspect/setup_aspect_list.json) DO NOT REPLACE IT!

```json
{
  "replace": false,
  "values": ["<namespace>:aspect/<name>/setup_aspect"]
}
```

#### 2. **Create an `is_active` predicate in [Aspect Predicates](./data/aspects/predicate/aspect/)**

```
<namespace>:aspect/<name>/is_active.json
```

```json
{
  "condition": "minecraft:entity_scores",
  "entity": "this",
  "scores": {
    "aspects.aspect_id": 0
  }
}
```

[Example Predicate](./data/aspects/predicate/aspect/human/is_active.json)

#### 3. **Create an Enchantment in [Aspect Enchantments](./data/aspects/enchantment/aspect/)**

```
<namespace>:aspect/<name>/body.json
```

Must have `minecraft:prevent_equipment_drop` and `minecraft:prevent_armor_change` as enchantment effects.
This is where you will have the abilities, or triggers for the abilities most of the time.

[Example Enchantment](./data/aspects/enchantment/aspect/human/body.json)

**Note**: You can not use `minecraft:reference` predicate condition in enchantments, you will need to copy the predicate in if you want to use it.

#### 4. **Create Item Modifiers in [Aspect Item Modifiers](./data/aspects/item_modifier/)**

##### 4.1 **[Aspect](./data/aspects/item_modifier/aspect)**

```
<namespace>:aspect/<name>/set.json
```

Must have `minecraft:reference` function with `aspects:jigsaw_immune_dummy`

Must have `minecraft:set_components` with

```json
"minecraft:custom_data": {
    "aspects": {
        "aspect": "<name>"
    }
}
```

```json
"minecraft:equippable": {
     "slot": "body",
     "allowed_entities": "minecraft:player",
     "dispensable": false,
     "swappable": false,
     "damage_on_hurt": false,
     "equip_on_interact": false
 }
```

```json
"minecraft:enchantments": {
    "aspects:aspect/<name>/body": 1
}
```

[Example Aspect](./data/aspects/item_modifier/aspect/human/set.json)

##### 4.2 **[Faded Relic](./data/aspects/item_modifier/relic/faded/)**

```
<namespace>:relic/<name>.json
```

[Example Faded Relic](./data/aspects/item_modifier/relic/faded/human.json)

##### 4.3 **[Shattered Relic](./data/aspects/item_modifier/relic/shattered/)**

```
<namespace>:shattered/<name>.json
```

[Example Shattered Relic](./data/aspects/item_modifier/relic/shattered/human.json)

#### 5. **Create Root Advancement [Aspect Gameplay Advancements](./data/aspects/advancement/gameplay/aspect/)**

```
<namespace>:gameplay/aspect/<name>/root.json
```

Create an advancement with an impossible criteria to use it as the root when you activate the aspect and show it as an advancement toast.

#### 6. **Define [Aspect Functions](./data/aspects/function/aspect/)**

##### 6.1 **Activate Function**

```
<namespace>:aspect/<name>/activate.mcfuction
```

```mcfunction
 function aspects:aspect/generic/activate

 function aspectlib:player_id/expose
 data modify storage aspectlib:dummy name set from storage aspects:aspect_list <name>.name
 function aspects:aspect/generic/assign_data with storage aspectlib:dummy

 function aspects:aspect/<name>/on_respawn

 advancement revoke @s only aspects:gameplay/aspect/<name>/root
 advancement grant @s only aspects:gameplay/aspect/<name>/root
```

[Example Activate Function](./data/aspects/function/aspect/human/activate.mcfunction)

##### 6.2 **Deactivate Function**

```
<namespace>:aspect/<name>/dectivate.mcfuction
```

```mcfunction
 function aspectlib:player_id/expose
 function aspects:aspect/<name>/remove_data with storage aspectlib:dummy
 function aspects:aspect/generic/deactivate
```

[Example Deactivate Function](./data/aspects/function/aspect/human/deactivate.mcfunction)

##### 6.3 **Give Aspect Function**

```
<namespace>:aspect/<name>/give_aspect.mcfuction
```

```mcfunction
 item replace entity @s armor.body with minecraft:jigsaw[minecraft:equippable={"slot":"body","equip_sound":"minecraft:entity.experience_orb.pickup"}]
 item modify entity @s armor.body aspects:aspect/<name>/set
```

[Example Give Aspect Function](./data/aspects/function/aspect/human/give_aspect.mcfunction)

##### 6.4 **On Respawn Function**

```
<namespace>:aspect/<name>/on_respawn.mcfuction
```

```mcfunction
 execute unless predicate aspects:aspect/<name>/is_active run return fail
 function aspects:aspect/<name>/give_aspect
```

Reference this function in [On Respawn Event Tag](./data/aspects/tags/function/event/on_respawn.json)

[Example On Respawn Function](./data/aspects/function/aspect/human/on_respawn.mcfunction)

##### 6.5 **Remove Data Function**

```
<namespace>:aspect/<name>/remove_data.mcfuction
```

```mcfunction
$data remove storage aspectlib:player_$(id) aspects.aspect_data.<name>
```

[Example Remove Data Function](./data/aspects/function/aspect/human/remove_data.mcfunction)

#### 7. **Making the Aspect Obtainable**

##### 7.1 **Creating `should_awaken_essence_cage` Predicate in [Aspect Predicates](./data/aspects/predicate/aspect/)**

Decide what type of Essence(s) will be required for your aspect to be gotten. Must be a unique combination.

Would heavily suggest to make it 120 Essences in total and at max 2 types of Essences.

[List of Essences and Their Sources](./data/aspects/tags/entity_type/essence)

```
<namespace>:aspect/<name>/should_awaken_essence_cage.json
```

```json
{
  "condition": "minecraft:entity_scores",
  "entity": "this",
  "scores": {
    "aspects.essence.<essence_1>": {
      "min": 60
    },
    "aspects.essence.<essence_2>": {
      "min": 60
    }
  }
}
```

or

```json
{
  "condition": "minecraft:entity_scores",
  "entity": "this",
  "scores": {
    "aspects.essence.<essence_1>": {
      "min": 120
    }
  }
}
```

[Example Predicate](./data/aspects/predicate/aspect/human/should_awaken_essence_cage.json)

##### 7.2 **Creating [Awaken Function](./data/aspects/function/essence_cage/awaken/)**

**[Mainhand](./data/aspects/function/essence_cage/awaken/mainhand)**

```
<namespace>:essence_cage/awaken/mainhand/<name>.mcfunction
```

```mcfunction
 function aspects:essence_cage/awaken/mainhand/generic

 item modify entity @s weapon.mainhand aspects:essence_cage/awakened/<name>

 return 1

```

[Example Awaken Mainhand Function](./data/aspects/function/essence_cage/awaken/mainhand/human.mcfunction)

**[Offhand](./data/aspects/function/essence_cage/awaken/offhand)**

```
<namespace>:essence_cage/awaken/offhand/<name>.mcfunction
```

```mcfunction
 function aspects:essence_cage/awaken/offhand/generic

 item modify entity @s weapon.offhand aspects:essence_cage/awakened/<name>

 return 1

```

[Example Awaken Offhand Function](./data/aspects/function/essence_cage/awaken/offhand/human.mcfunction)

##### 7.3 **Create and add the `check_awaken_list` function to the [Check Awaken List Tag](./data/aspects/tags/function/essence_cage/check_awaken_list/)**

**[Mainhand](./data/aspects/function/essence_cage/check_awaken_list/mainhand/)**

```
<namespace>:essence_cage/check_awaken_list/mainhand/<name>.mcfunction
```

```mcfunction
execute if predicate aspects:aspect/<name>/should_awaken_essence_cage run return run function aspects:essence_cage/awaken/mainhand/<name>
```

[Example Check Awaken List Function](./data/aspects/function/essence_cage/check_awaken_list/mainhand/human.mcfunction)

Then add this Function into [Check Awaken List Tag](./data/aspects/tags/function/essence_cage/check_awaken_list/mainhand.json) DO NOT REPLACE IT!

```json
{
  "replace": false,
  "values": ["<namespace>:essence_cage/check_awaken_list/mainhand/<name>"]
}
```

**[Offhand](./data/aspects/function/essence_cage/check_awaken_list/offhand/)**

```
<namespace>:essence_cage/check_awaken_list/offhand/<name>.mcfunction
```

```mcfunction
execute if predicate aspects:aspect/<name>/should_awaken_essence_cage run return run function aspects:essence_cage/awaken/offhand/<name>
```

[Example Check Awaken List Function](./data/aspects/function/essence_cage/check_awaken_list/offhand/human.mcfunction)

Then add this Function into [Check Awaken List Tag](./data/aspects/tags/function/essence_cage/check_awaken_list/offhand.json) DO NOT REPLACE IT!

```json
{
  "replace": false,
  "values": ["<namespace>:essence_cage/check_awaken_list/offhand/<name>"]
}
```

##### 7.4 **Define [Activate Aspect Function](./data/aspects/function/essence_cage/activate_aspect/)**

```
<namespace>:essence_cage/activate_aspect/<name>.mcfunction
```

```mcfunction
advancement revoke @s only aspects:essence_cage/consume_awakened_cage/dragonkin

function aspects:aspect/dragonkin/activate

function aspects:essence_cage/activate_aspect/generic with entity @s equipment.body.components."minecraft:custom_data".aspects

```

[Example Activate Aspect Function](./data/aspects/function/essence_cage/activate_aspect/human.mcfunction)

##### 7.5 **Create [Advancement to Consume Awakened Cage](./data/aspects/advancement/essence_cage/consume_awakened_cage/)**

```
<namespace>:essence_cage/consume_awakened_cage/<name>.json
```

```json
{
  "criteria": {
    "consume_item": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "components": {
            "minecraft:custom_data": {
              "aspects": {
                "awakened_essence_cage": {
                  "aspect": "<name>"
                }
              }
            }
          }
        }
      }
    }
  },
  "rewards": {
    "function": "aspects:essence_cage/activate_aspect/<name>"
  }
}
```

[Example Advancement to Consume Awakened Cage](./data/aspects/advancement/essence_cage/consume_awakened_cage/human.json)

##### 7.6 **Define [Store Aspect From Aspect Kill Function](./data/aspects/function/essence_cage/store_aspect_from_aspect/)**

```
<namespace>:essence_cage/store_aspect_from_aspect/<name>.mcfunction
```

```mcfunction
advancement revoke @s only aspects:essence_cage/store_aspect_from_aspect/<name>

execute if predicate aspects:essence_cage/is_in_mainhand run return run function aspects:essence_cage/awaken/mainhand/<name>

execute if predicate aspects:essence_cage/is_in_offhand run return run function aspects:essence_cage/awaken/offhand/<name>

```

[Example Store Aspect From Aspect Kill Function](./data/aspects/function/essence_cage/activate_aspect/human.mcfunction)

##### 7.7 **Create [Advancement to Store Aspect From Aspect Kill](./data/aspects/advancement/essence_cage/store_aspect_from_aspect/)**

```
<namespace>:essence_cage/store_aspect_from_aspect/<name>.json
```

```json
{
  "criteria": {
    "kill_elytrian_caged": {
      "trigger": "minecraft:player_killed_entity",
      "conditions": {
        "player": [
          {
            "condition": "minecraft:reference",
            "name": "aspects:essence_cage/is_in_offhand"
          }
        ],
        "entity": [
          {
            "condition": "minecraft:reference",
            "name": "aspects:aspect/<name>/is_active"
          }
        ],
        "killing_blow": {
          "is_direct": true
        }
      }
    }
  },
  "rewards": {
    "function": "aspects:essence_cage/store_aspect_from_aspect/<name>"
  }
}
```

[Example Advancement to Consume Awakened Cage](./data/aspects/advancement/essence_cage/consume_awakened_cage/human.json)

#### Optional

**Adding your Aspect to an [Aspect Group](./data/aspects/function/essence_cage/store_aspect_from_aspect/human.mcfunction)**

If you want to add your Aspect to an Aspect Group you can insert this into the predicate `any_of` terms list.

```json
{
  "condition": "minecraft:reference",
  "name": "aspects:aspect/<name>/is_active"
}
```

**Note**: If you want to make your Aspect take more damage from [Smite](./data/minecraft/enchantment/smite.json), [Bane of Arthropods](./data/minecraft/enchantment/bane_of_arthropods.json) or [Impaling](./data/minecraft/enchantment/impaling.json) you will need to modify the Vanilla Enchantment.

```json
{
  "condition": "minecraft:entity_scores",
  "entity": "this",
  "scores": {
    "aspects.aspect_id": <id>
  }
}
```
