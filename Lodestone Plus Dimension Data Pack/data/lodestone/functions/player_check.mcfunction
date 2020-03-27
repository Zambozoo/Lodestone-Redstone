#Check player has paired lodestone compass
execute store success score flag lodestone run data get entity @s SelectedItem.tag.LodestonePos.X
execute if score flag lodestone matches 1 run function lodestone:dimension_check