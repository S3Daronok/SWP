execute at @s anchored eyes run summon arrow ^ ^ ^ {Tags:["new_sniperbullet","sniperbullet"]}
summon area_effect_cloud ~ ~ ~ {Radius:1f,Duration:1,Tags:["sniperdummy"]}
execute rotated as @s positioned 0.0 0.0 0.0 run teleport @e[type=area_effect_cloud,tag=sniperdummy] ^ ^ ^4.5
data modify entity @e[type=arrow,limit=1,tag=new_sniperbullet] Motion set from entity @e[type=area_effect_cloud,tag=sniperdummy,limit=1] Pos
tag @e[tag=new_sniperbullet,type=arrow] remove new_sniperbullet