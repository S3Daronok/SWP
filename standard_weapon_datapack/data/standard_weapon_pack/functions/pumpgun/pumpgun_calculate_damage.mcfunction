scoreboard players remove @s health 2
scoreboard players add @s damage 2
execute if score @a[tag=shooter,limit=1,sort=nearest] range matches ..10 run scoreboard players remove @s health 1
execute if score @a[tag=shooter,limit=1,sort=nearest] range matches ..10 run scoreboard players add @s damage 1
scoreboard players remove @a[tag=shooter] range 1
execute if score @p[tag=shooter] range matches 1.. run function standard_weapon_pack:pumpgun/pumpgun_calculate_damage