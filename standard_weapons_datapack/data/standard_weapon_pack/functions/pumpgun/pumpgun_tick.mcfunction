execute unless score @s tick matches 1 if score @s pumpgun_cooldown matches 1.. run scoreboard players remove @s pumpgun_cooldown 1
execute as @s[scores={pumpgun_cooldown=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{weapon_mode:2b}}}] run function standard_weapon_pack:pumpgun/pumpgun_reload
execute as @s[scores={carrotOnaStick=1,pumpgun_cooldown=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pumpgun:1b}}}] if score @s pumpgun_ammo matches 1.. run function standard_weapon_pack:pumpgun/pumpgun_shoot
execute unless score @s tick matches 1 at @s[scores={pumpgun_cooldown=5},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{weapon_mode:0b}}}] run playsound daronok_weapon_pack_pumpgun_eject player @a ~ ~ ~
execute unless score @s tick matches 1 at @s[scores={pumpgun_cooldown=5},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{weapon_mode:1b}}}] run playsound daronok_weapon_pack_pumpgun_eject player @a ~ ~ ~
execute as @s[scores={weapon_mode=0},predicate=pred:sneaking] run function standard_weapon_pack:pumpgun/pumpgun_aim
execute as @s[scores={weapon_mode=1}] unless predicate pred:sneaking run function standard_weapon_pack:pumpgun/pumpgun_deaim
title @s actionbar ["",{"text":"<","bold":true,"color":"dark_red"},{"text":"-","color":"red"},{"text":"Pumpgun","bold":true,"color":"white"},{"text":" | ","bold":true,"color":"dark_red"},{"score":{"name":"@s","objective":"pumpgun_ammo"},"bold":true,"color":"white"},{"text":"-","color":"red"},{"text":">","bold":true,"color":"dark_red"}]
scoreboard players reset @s carrotOnaStick
scoreboard players set @s tick 1