scoreboard players remove @s health 1
scoreboard players add @s damage 1
scoreboard players remove @a[tag=shooter] range 4
execute if score @p[tag=shooter] range matches 1.. run function standard_weapon_pack:pistol/pistol_calculate_damage
