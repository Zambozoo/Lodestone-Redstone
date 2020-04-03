#Run as players that are holding compasses with lodstone position coords
execute as @a[nbt={SelectedItem:{tag:{LodestonePos:{}}}}] run function lodestone:check_dimension