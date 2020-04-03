# Set dimension for each player, overworld(0 => 19), nether(-1 => 20), end(1 => 17)
execute store result score @s lodestone run data get entity @s Dimension

scoreboard players set @s[scores={lodestone=0}] lodestone 19
scoreboard players set @s[scores={lodestone=-1}] lodestone 20
scoreboard players set @s[scores={lodestone=1}] lodestone 17

scoreboard players set @s lodestone_death 0
advancement revoke @s only lodestone:change_dimension