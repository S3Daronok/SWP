execute store result score @s dummy run data get storage weapons Customized.tag.scope
execute as @s[scores={dummy=0}] run data modify storage weapons Customized.tag.scope set value 1b
execute as @s[scores={dummy=1}] run data modify storage weapons Customized.tag.scope set value 2b
execute as @s[scores={dummy=2}] run data modify storage weapons Customized.tag.scope set value 3b
execute as @s[scores={dummy=3}] run data modify storage weapons Customized.tag.scope set value 4b
execute as @s[scores={dummy=4}] run data modify storage weapons Customized.tag.scope set value 5b
execute as @s[scores={dummy=5}] run data modify storage weapons Customized.tag.scope set value 6b
execute as @s[scores={dummy=6}] run data modify storage weapons Customized.tag.scope set value 0b
scoreboard players reset @s dummy
schedule function standard_weapon_pack:customizer/customizer_settings 1t