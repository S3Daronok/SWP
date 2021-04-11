execute if score @p[tag=shooter] fire_ammo matches 1 run data modify entity @s Fire set value 100
execute if score @p[tag=shooter] poison_ammo matches 1 run scoreboard players add @s poisoned 60
execute if score @p[tag=shooter] poison_ammo matches 1 unless score @p[tag=shooter] poisoned_tick matches 5.. run scoreboard players set @s poisoned_tick 5
execute if score @p[tag=shooter] poison_ammo matches 1 if score @p[tag=shooter] poisoned_tick matches 5.. run scoreboard players remove @s poisoned_tick 5
execute if score @p[tag=shooter] poison_ammo matches 1 run scoreboard players add @s poison_ammo 0
execute store result score @s health run data get entity @s Health
scoreboard players set @s dummy 20
scoreboard players operation @s health *= @s dummy
function standard_weapon_pack:pumpgun/pumpgun_calculate_damage
scoreboard players add @s damage 1
execute if score @s health matches ..0 as @s[tag=!shooter] if score @s damage matches 1.. run scoreboard players set @s dummy 20
execute if score @s health matches ..0 as @s[tag=!shooter] if score @s damage matches 1.. run scoreboard players operation @s damage /= @s dummy
execute if score @s health matches ..0 as @s[tag=!shooter] if score @s damage matches 1.. run scoreboard players reset @s dummy
execute if score @s health matches ..0 as @s[tag=!shooter] if score @s damage matches 1.. run function standard_weapon_pack:damage_indicator
execute store result entity @s Health float 0.05 run scoreboard players remove @s health 1
execute at @s run particle dust 0.678 0.000 0.000 3 ~ ~1 ~ 0 0 0 1 0 normal