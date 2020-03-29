#Add scoreboard
scoreboard objectives add lodestone dummy
scoreboard players set #0 lodestone 0
scoreboard players set #16 lodestone 16
scoreboard players set #20 lodestone 20

scoreboard players set #max lodestone 32786
scoreboard players set #min lodestone -32786

#Display message
tellraw @a ["",{"text":"["},{"text":"Lodestone Redstone Datapack","color":"gray"},{"text":"] Loaded!\n Lodestones now emit a redstone signal that varies with distance if compasses that point to it are held in the same dimension."}]