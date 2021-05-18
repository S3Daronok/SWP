scoreboard players add @s pumpgun_ammo 1
execute store result storage minecraft:weapons Ammo.Count byte 1 run scoreboard players remove @s Ammo 1
