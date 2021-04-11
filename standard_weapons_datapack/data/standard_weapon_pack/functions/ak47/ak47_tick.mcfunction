execute if score @s ak47_cooldown matches 1.. run scoreboard players remove @s ak47_cooldown 1
execute as @s[scores={carrotOnaStick=1}] if score @s ak47_ammo matches 1.. unless score @s ak47_cooldown matches 1.. run function standard_weapon_pack:ak47/ak47_shoot
execute as @s[scores={weapon_mode=0},predicate=pred:sneaking] run function standard_weapon_pack:ak47/ak47_aim
execute as @s[scores={weapon_mode=1}] unless predicate pred:sneaking run function standard_weapon_pack:ak47/ak47_deaim
title @s actionbar ["",{"text":"<","bold":true,"color":"blue"},{"text":"-","color":"dark_aqua"},{"text":"AK-47","bold":true,"color":"white"},{"text":" | ","bold":true,"color":"blue"},{"score":{"name":"@s","objective":"ak47_ammo"},"bold":true,"color":"white"},{"text":"-","color":"dark_aqua"},{"text":">","bold":true,"color":"blue"}]
scoreboard players set @s tick 1
execute as @s[scores={carrotOnaStick=1}] unless score @s ak47_ammo matches 1.. run function standard_weapon_pack:ak47/ak47_reload
scoreboard players reset @s carrotOnaStick
execute as @s[scores={ak47_cooldown=5},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{weapon_mode:2b}}}] run function standard_weapon_pack:ak47/ak47_dereload