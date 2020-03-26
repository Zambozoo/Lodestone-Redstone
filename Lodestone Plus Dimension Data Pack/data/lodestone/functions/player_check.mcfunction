#Check player has paired lodestone compass
execute store success score hascompass lodestone run execute store success score hascompass lodestone run data get entity @s SelectedItem.tag.LodestonePos.X
execute if score hascompass lodestone matches 1 run function lodestone:dimension_check