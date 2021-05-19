execute if score @s pistol_cooldown matches 1.. run scoreboard players remove @s pistol_cooldown 1
execute as @s[scores={carrotOnaStick=1}] if score @s pistol_ammo matches 1.. unless score @s pistol_cooldown matches 1.. run function standard_weapon_pack:pistol/pistol_shoot
execute as @s[scores={weapon_mode=0},predicate=pred:sneaking] run function standard_weapon_pack:pistol/pistol_aim
execute as @s[scores={weapon_mode=1}] unless predicate pred:sneaking run function standard_weapon_pack:pistol/pistol_deaim
title @s actionbar ["",{"text":"<","bold":true,"color":"blue"},{"text":"-","color":"dark_aqua"},{"text":"Pistol","bold":true,"color":"white"},{"text":" | ","bold":true,"color":"blue"},{"score":{"name":"@s","objective":"pistol_ammo"},"bold":true,"color":"white"},{"text":"-","color":"dark_aqua"},{"text":">","bold":true,"color":"blue"}]
scoreboard players set @s tick 1
execute as @s[scores={carrotOnaStick=1}] unless score @s pistol_ammo matches 1.. run function standard_weapon_pack:pistol/pistol_reload
execute as @s[scores={pistol_cooldown=5},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{weapon_mode:2b}}}] run function standard_weapon_pack:pistol/pistol_dereload
execute as @s[scores={carrotOnaStick=1..}] run scoreboard players add @s pistol_cooldown 5
execute as @s[scores={carrotOnaStick=1..}] run say hi
scoreboard players reset @s carrotOnaStick