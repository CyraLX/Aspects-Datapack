# Instead of choosing an Aspect when first joining, it will assign the specified Aspect based on the set aspect id.
# (For example -2 is Off, -1 is Random, 0 will be Human, 1 is Merling, etc...)
# Default: -2
scoreboard objectives add aspects.config.player.force_default_aspect dummy
scoreboard objectives add aspects.config.player.force_default_aspect.default dummy
scoreboard objectives add aspects.config.player.force_default_aspect.min_value dummy
scoreboard objectives add aspects.config.player.force_default_aspect.max_value dummy
scoreboard objectives add aspects.config.player.force_default_aspect.advanced_inputs dummy
scoreboard players reset #aspects aspects.config.player.force_default_aspect.min_value
scoreboard players reset #aspects aspects.config.player.force_default_aspect.max_value

# Define Registry Data
#
# Required:
#   namespace           - Namespace string of your project
#   type                - Name string of the category your Config belongs to
#   name                - Name string of your Config
#
# Optional:
#   dialog_type         - Integer ID for what dialog this Config uses
#                         0 = Custom
#                         1 = Boolean/Toggle
#                         2 = Integer/Number
#                         3 = List Choice
#   dialog_data         - Custom data required by some dialog types; defaults to {}
#   name_with           - SNBT Text Component array formatted into the `name` translation key
#                         Defaults to [""]
#   description_with    - SNBT Text Component array formatted into the `description` translation key
#                         Defaults to [""]
#   note_with           - SNBT Text Component array formatted into the `note` translation key
#                         Defaults to [""]
#
# dialog_data fields for dialog_type 2 (Integer/Number):
#
#   Required:
#     start             - Start of the basic slider range (inclusive)
#     end               - End of the basic slider range (inclusive)
#     step              - Step size of the basic slider
#
#   Optional:
#     accepts_namespace - Namespace segment of the "Accepts Values" translation key
#                           Format: dialog.<accepts_namespace>.configs.entry.accepts_values<accepts_name>
#                           Defaults to "aspects"
#     accepts_name      - Suffix segment of the "Accepts Values" translation key (see format above)
#                           Defaults to ""
#     accepts_with      - SNBT Text Component array formatted into the "Accepts Values" translation key
#                           Defaults to [""]
#     initial           - Overrides the initial slider value; must be within [start, end]
#                           In Basic Input Mode, clamped to [start, end] if out of range
#                           Defaults to the current config value
#
# dialog_data fields for dialog_type 3 (List Choice):
#
#   Required:
#     action_list        - Array of actions to populate the config with
#                           This Array will be populated by you manually via helper functions
#     default_display    - SNBT Text Component that will display the default value
#                           This Text Component will be populated by you manually via helper functions
#                           Build file paths are important as internal macros will reference them
#     current_display    - SNBT Text Component that will display the current value
#                           This Text Component will be populated by you manually via helper functions
#                           Build file paths are important as internal macros will reference them
#
#   Optional:
#     accepts_namespace  - Namespace segment of the "Accepts Values" translation key
#                           Format: dialog.<accepts_namespace>.configs.entry.accepts_values<accepts_name>
#                           Defaults to "aspects"
#     accepts_name       - Suffix segment of the "Accepts Values" translation key (see format above)
#                           Defaults to ""
#     accepts_with       - SNBT Text Component array formatted into the "Accepts Values" translation key
#                           Defaults to [""]
#
data modify storage aspectlib:cache temp.config set value {namespace:"aspects",type:"player",name:"force_default_aspect",dialog_type:3,dialog_data:{action_list:[],accepts_namespace:"aspects",accepts_name:".registry",accepts_with:[{translate:"registry.aspects.aspect"}]}}
# Define Default value
scoreboard players set #aspectlib aspectlib.temp -2
# Define MIN value
scoreboard players set #aspects aspects.config.player.force_default_aspect.min_value -1

# Generic REGISTER_CONFIG logic
function aspectlib:config/_macros/register_config with storage aspectlib:cache temp.config

# If current is less then default, set current as default
execute unless score #aspects aspects.config.player.force_default_aspect >= #aspects aspects.config.player.force_default_aspect.default run scoreboard players operation #aspects aspects.config.player.force_default_aspect = #aspects aspects.config.player.force_default_aspect.default

# Build list of Actions
function aspects:config/player/force_default_aspect/build/action_list
# Build Default Display
execute store result storage aspectlib:cache temp.config.default int 1 run scoreboard players get #aspects aspects.config.player.force_default_aspect.default
function aspects:config/player/force_default_aspect/build/default_display with storage aspectlib:cache temp.config
# Build Current Display
execute store result storage aspectlib:cache temp.config.current int 1 run scoreboard players get #aspects aspects.config.player.force_default_aspect
function aspects:config/player/force_default_aspect/build/current_display with storage aspectlib:cache temp.config
