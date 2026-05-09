# When True, makes it so that Players which do not have an active Aspect become damage immune.
# Default: 1 (true)
scoreboard objectives add aspects.config.player.aspectless_players_invulnerable dummy
scoreboard objectives add aspects.config.player.aspectless_players_invulnerable.default dummy
scoreboard objectives add aspects.config.player.aspectless_players_invulnerable.advanced_inputs dummy

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
data modify storage aspectlib:dummy config set value {namespace:"aspects",type:"player",name:"aspectless_players_invulnerable",dialog_type:1,description_with:[{translate:"options.on",color:"green"}]}
# Define Default value
scoreboard players set #aspects aspectlib.dummy 1

# Convert legacy scoreboard
## From V2 to V3
execute if score #aspects aspects.config.aspectless_players_invulnerable = #aspects aspects.config.aspectless_players_invulnerable run scoreboard players operation #aspects aspects.config.player.aspectless_players_invulnerable = #aspects aspects.config.aspectless_players_invulnerable
execute if score #aspects aspects.config.aspectless_players_invulnerable = #aspects aspects.config.aspectless_players_invulnerable run scoreboard objectives remove aspects.config.aspectless_players_invulnerable

# Generic REGISTER_CONFIG logic
function aspects:config/_macros/register_config with storage aspectlib:dummy config
