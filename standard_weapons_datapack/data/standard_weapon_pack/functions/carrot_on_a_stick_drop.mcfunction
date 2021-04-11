execute at @s run data modify storage weapons SelectedItem set from entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] Item

execute store result score @s weapon_mode run data get storage weapons SelectedItem.tag.weapon_mode

execute if data storage weapons SelectedItem.tag.ak47 run function standard_weapon_pack:give_selected_item
execute if data storage weapons SelectedItem.tag.ak47 run function standard_weapon_pack:ak47/ak47_reload_apply

execute if data storage weapons SelectedItem.tag.pumpgun as @s[scores={weapon_mode=0}] run scoreboard players set @s has_reloaded 1
execute if data storage weapons SelectedItem.tag.pumpgun as @s[scores={weapon_mode=0}] if data entity @s Inventory[{id:"minecraft:gunpowder",tag: {shotgun_ammo:1b}}] run function standard_weapon_pack:pumpgun/pumpgun_reload
execute if data storage weapons SelectedItem.tag.pumpgun as @s[scores={weapon_mode=1}] run scoreboard players set @s has_reloaded 1
execute if data storage weapons SelectedItem.tag.pumpgun as @s[scores={weapon_mode=1}] if data entity @p Inventory[{id:"minecraft:gunpowder",tag: {shotgun_ammo:1b}}] run function standard_weapon_pack:pumpgun/pumpgun_reload
execute if data storage weapons SelectedItem.tag.pumpgun as @s[scores={weapon_mode=2}] unless score @s has_reloaded matches 1 run function standard_weapon_pack:pumpgun/pumpgun_dereload
execute if data storage weapons SelectedItem.tag.pumpgun as @s[scores={weapon_mode=1}] unless data entity @s Inventory[{id:"minecraft:gunpowder",tag: {shotgun_ammo:1b}}] run function standard_weapon_pack:give_selected_item
execute if data storage weapons SelectedItem.tag.pumpgun as @s[scores={weapon_mode=0}] unless data entity @s Inventory[{id:"minecraft:gunpowder",tag: {shotgun_ammo:1b}}] run function standard_weapon_pack:give_selected_item
kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]

scoreboard players reset @s drop_carrotStick
scoreboard players reset @s has_reloaded