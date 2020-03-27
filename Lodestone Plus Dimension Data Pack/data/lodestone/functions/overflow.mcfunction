#Replace lodestone with target_block then back for redstone pulse.

execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[lodestone]}
execute as @e[type=minecraft:area_effect_cloud,tag=lodestone,limit=1] run function lodestone:power/overflow