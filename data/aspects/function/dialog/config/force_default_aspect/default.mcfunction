execute store result score #aspects aspects.config.force_default_aspect run data get storage aspectlib:data configs.aspects.force_default_aspect.default
execute store result storage aspectlib:data configs.aspects.force_default_aspect.current int 1 run data get storage aspectlib:data configs.aspects.force_default_aspect.default
data modify storage aspectlib:data configs.aspects.force_default_aspect.was_modified set value false
