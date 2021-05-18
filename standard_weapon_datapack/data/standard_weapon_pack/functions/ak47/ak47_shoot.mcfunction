scoreboard players remove @s ak47_ammo 1
scoreboard players set @s range 40
scoreboard players add @s ak47_cooldown 2
scoreboard players reset @s carrotOnaStick
tag @s add shooter
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
execute at @s unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{silencer:1b}}}] run playsound daronok_weapon_pack_ak47_shoot player @a ~ ~ ~
execute at @s anchored eyes positioned ^ ^ ^ run function standard_weapon_pack:ak47/ak47_raycast
execute at @s run teleport @s ~ ~ ~ ~ ~-2
tag @s remove shooter
scoreboard players reset @s fire_ammo
scoreboard players reset @s poison_ammo
execute unless score @s ak47_ammo matches 1.. run function standard_weapon_pack:ak47/ak47_reload_apply