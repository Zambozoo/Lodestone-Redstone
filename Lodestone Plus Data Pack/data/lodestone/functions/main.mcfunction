#Run as players that are holding compasses with lodstone position coords
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}}] run function lodestone:dimension/check
execute as @e[type=minecraft:player,scores={lodestone_death=1}] run function lodestone:dimension/set