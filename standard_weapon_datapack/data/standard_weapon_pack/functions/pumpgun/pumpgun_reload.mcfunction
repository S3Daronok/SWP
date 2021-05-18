data modify storage weapons SelectedItem.tag.weapon_mode set value 2b
function standard_weapon_pack:pumpgun/pumpgun_skins/pumpgun_mode_2_skins
function standard_weapon_pack:give_selected_item

function standard_weapon_pack:shotgun_ammo_reload
execute if score @s[scores={pumpgun_cooldown=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:0b}}}] pumpgun_ammo matches ..4 if score @s Ammo matches 1.. run function standard_weapon_pack:pumpgun/pumpgun_reload_calculate
execute if score @s[scores={pumpgun_cooldown=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:1b}}}] pumpgun_ammo matches ..5 if score @s Ammo matches 1.. run function standard_weapon_pack:pumpgun/pumpgun_reload_calculate
execute if score @s[scores={pumpgun_cooldown=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:2b}}}] pumpgun_ammo matches ..6 if score @s Ammo matches 1.. run function standard_weapon_pack:pumpgun/pumpgun_reload_calculate
execute if score @s[scores={pumpgun_cooldown=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:3b}}}] pumpgun_ammo matches ..7 if score @s Ammo matches 1.. run function standard_weapon_pack:pumpgun/pumpgun_reload_calculate
function standard_weapon_pack:give_ammo
execute at @s run playsound daronok_weapon_pack_pumpgun_reload player @a ~ ~ ~
scoreboard players add @s pumpgun_cooldown 12
execute if score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:0b}}}] pumpgun_ammo matches 5 run function standard_weapon_pack:pumpgun/pumpgun_dereload
execute if score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:1b}}}] pumpgun_ammo matches 6 run function standard_weapon_pack:pumpgun/pumpgun_dereload 
execute if score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:2b}}}] pumpgun_ammo matches 7 run function standard_weapon_pack:pumpgun/pumpgun_dereload 
execute if score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:3b}}}] pumpgun_ammo matches 8 run function standard_weapon_pack:pumpgun/pumpgun_dereload
execute unless data entity @s Inventory[{id:"minecraft:gunpowder",tag: {shotgun_ammo:1b}}] run function standard_weapon_pack:pumpgun/pumpgun_dereload