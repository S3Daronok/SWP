scoreboard players set @s range 24

execute store result score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pyro_ammo:1b}}}] fire_ammo run loot spawn ~ -2 ~ loot standard_weapon_pack:10_percent
execute store result score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pyro_ammo:2b}}}] fire_ammo run loot spawn ~ -2 ~ loot standard_weapon_pack:30_percent
execute store result score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pyro_ammo:3b}}}] fire_ammo run loot spawn ~ -2 ~ loot standard_weapon_pack:50_percent
execute store result score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pyro_ammo:4b}}}] fire_ammo run loot spawn ~ -2 ~ loot standard_weapon_pack:70_percent
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pyro_ammo:5b}}}] run scoreboard players set @s fire_ammo 1

execute store result score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{poison_ammo:1b}}}] poison_ammo run loot spawn ~ -2 ~ loot standard_weapon_pack:10_percent
execute store result score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{poison_ammo:2b}}}] poison_ammo run loot spawn ~ -2 ~ loot standard_weapon_pack:30_percent
execute store result score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{poison_ammo:3b}}}] poison_ammo run loot spawn ~ -2 ~ loot standard_weapon_pack:50_percent
execute store result score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{poison_ammo:4b}}}] poison_ammo run loot spawn ~ -2 ~ loot standard_weapon_pack:70_percent
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{poison_ammo:5b}}}] run scoreboard players set @s poison_ammo 1

execute at @s anchored eyes run function standard_weapon_pack:pumpgun/pumpgun_raycast
scoreboard players reset @s fire_ammo
scoreboard players reset @s poison_ammo