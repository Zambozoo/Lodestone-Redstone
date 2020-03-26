#Replace lodestone with target_block then back for redstone pulse.
execute at @s run setblock ~ ~ ~ minecraft:target
execute at @s run setblock ~ ~ ~ minecraft:target[power=13]