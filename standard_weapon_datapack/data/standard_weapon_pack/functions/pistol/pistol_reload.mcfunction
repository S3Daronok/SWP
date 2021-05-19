

execute unless score @s pistol_ammo matches 1.. run scoreboard players set @s pistol_ammo 0
function standard_weapon_pack:heavy_ammo_reload
function standard_weapon_pack:pistol/pistol_reload_calculate
execute if score @s dummy > @s Ammo run scoreboard players remove @s dummy 1
scoreboard players operation @s Ammo -= @s dummy
scoreboard players reset @s dummy
execute store result storage minecraft:weapons Ammo.Count byte 1 run scoreboard players get @s Ammo
function standard_weapon_pack:give_ammo
execute if data entity @p Inventory[{id:"minecraft:gunpowder",tag: {heavy_ammo:1b}}] unless score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:0b}}}] pistol_ammo matches 20 unless score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:1b}}}] pistol_ammo matches 30 unless score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:2b}}}] pistol_ammo matches 35 unless score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:3b}}}] pistol_ammo matches 40 run function standard_weapon_pack:pistol/pistol_reload

