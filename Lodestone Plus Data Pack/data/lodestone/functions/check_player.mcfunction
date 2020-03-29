#Check player has paired lodestone compass with x coord
execute store result score x lodestone run data get entity @s SelectedItem.tag.LodestonePos.X
execute unless score x lodestone matches 0 run function lodestone:check_dimension