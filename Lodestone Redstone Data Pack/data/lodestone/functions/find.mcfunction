#Store lodestone location to scoreboard.
execute store result score x lodestone run data get entity @s SelectedItem.tag.LodestonePos.X
execute store result score y lodestone run data get entity @s SelectedItem.tag.LodestonePos.Y
execute store result score z lodestone run data get entity @s SelectedItem.tag.LodestonePos.Z

#Spawn AEC, run power.
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[lodestone]}
execute as @e[type=minecraft:area_effect_cloud,tag=lodestone,limit=1] run function lodestone:power