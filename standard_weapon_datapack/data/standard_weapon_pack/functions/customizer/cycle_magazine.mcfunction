execute store result score @s dummy run data get storage weapons Customized.tag.magazine
execute as @s[scores={dummy=0}] run data modify storage weapons Customized.tag.magazine set value 1b
execute as @s[scores={dummy=1}] run data modify storage weapons Customized.tag.magazine set value 2b
execute as @s[scores={dummy=2}] run data modify storage weapons Customized.tag.magazine set value 3b
execute as @s[scores={dummy=3}] run data modify storage weapons Customized.tag.magazine set value 0b
scoreboard players reset @s dummy
schedule function standard_weapon_pack:customizer/customizer_settings 1t