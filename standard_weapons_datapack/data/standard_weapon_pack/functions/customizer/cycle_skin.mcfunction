execute unless score @s customizer_skin matches 0.. if score @s customizer_skin matches 0.. run scoreboard players add @s customizer_skin 1
execute unless score @s customizer_skin matches 1.. run scoreboard players set @s customizer_skin 0
execute as @s[scores={customizer_skin=0}] run data modify storage weapons Customized.tag.default_skin set value 1b
execute as @s[scores={customizer_skin=0}] if data storage weapons Customized.tag.pumpgun run data modify storage weapons Customized.tag.CustomModelData set value 1110000
execute as @s[scores={customizer_skin=0}] if data storage weapons Customized.tag.ak47 run data modify storage weapons Customized.tag.CustomModelData set value 1111000
execute as @s[scores={customizer_skin=0}] if data storage weapons Customized.tag.ak47 run say hi
schedule function standard_weapon_pack:customizer/customizer_settings 1t