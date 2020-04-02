#Add scoreboard
scoreboard objectives add lodestone dummy
scoreboard players set #2 lodestone 2
scoreboard players set #16 lodestone 16
scoreboard players set #20 lodestone 20

scoreboard players set #r1 lodestone 1
scoreboard players set #r2 lodestone 4
scoreboard players set #r3 lodestone 9
scoreboard players set #r4 lodestone 16
scoreboard players set #r5 lodestone 25
scoreboard players set #r6 lodestone 36
scoreboard players set #r7 lodestone 49
scoreboard players set #r8 lodestone 64
scoreboard players set #r9 lodestone 81
scoreboard players set #r10 lodestone 100
scoreboard players set #r11 lodestone 121
scoreboard players set #r12 lodestone 144
scoreboard players set #r13 lodestone 169
scoreboard players set #r14 lodestone 196
scoreboard players set #r15 lodestone 225

scoreboard players set #max lodestone 32786
scoreboard players set #min lodestone -32786

#Display message
tellraw @a ["",{"text":"["},{"text":"Lodestone Redstone Datapack","color":"gray"},{"text":"] Loaded!\n Lodestones now emit a redstone signal that varies with distance if compasses that point to it are held in the same dimension."}]