execute store result score @a[tag=customizing] dummy run data get storage weapons Customized_Ammo.Count
execute as @a[scores={dummy=64}] run scoreboard players set @s dummy 0
execute as @a[scores={dummy=32}] run scoreboard players set @s dummy 64
execute as @a[scores={dummy=16}] run scoreboard players set @s dummy 32
execute as @a[scores={dummy=8}] run scoreboard players set @s dummy 16
execute as @a[scores={dummy=1}] run scoreboard players set @s dummy 8
execute as @a[scores={dummy=0}] run scoreboard players set @s dummy 1
execute store result storage weapons Customized_Ammo.Count byte 1 run scoreboard players get @p[tag=customizing] dummy
scoreboard players reset @s dummy
schedule function standard_weapon_pack:customizer/customizer_settings 1t