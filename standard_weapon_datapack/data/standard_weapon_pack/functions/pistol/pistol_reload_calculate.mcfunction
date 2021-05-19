execute unless score @s dummy matches 0.. run scoreboard players set @s dummy 0
execute unless score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:0b}}},scores={pistol_ammo=..19}] dummy > @s Ammo run scoreboard players add @s dummy 1
execute unless score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:0b}}},scores={pistol_ammo=..19}] dummy > @s Ammo run scoreboard players add @s ak47_ammo 1
execute unless score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:0b}}},scores={pistol_ammo=..19}] dummy > @s Ammo run function standard_weapon_pack:pistol/pistol_reload_calculate
execute unless score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:1b}}},scores={pistol_ammo=..29}] dummy > @s Ammo run scoreboard players add @s dummy 1
execute unless score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:1b}}},scores={pistol_ammo=..29}] dummy > @s Ammo run scoreboard players add @s ak47_ammo 1
execute unless score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:1b}}},scores={pistol_ammo=..29}] dummy > @s Ammo run function standard_weapon_pack:pistol/pistol_reload_calculate
execute unless score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:2b}}},scores={pistol_ammo=..34}] dummy > @s Ammo run scoreboard players add @s dummy 1
execute unless score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:2b}}},scores={pistol_ammo=..34}] dummy > @s Ammo run scoreboard players add @s ak47_ammo 1
execute unless score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:2b}}},scores={pistol_ammo=..34}] dummy > @s Ammo run function standard_weapon_pack:pistol/pistol_reload_calculate
execute unless score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:3b}}},scores={pistol_ammo=..39}] dummy > @s Ammo run scoreboard players add @s dummy 1
execute unless score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:3b}}},scores={pistol_ammo=..39}] dummy > @s Ammo run scoreboard players add @s ak47_ammo 1
execute unless score @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magazine:3b}}},scores={pistol_ammo=..39}] dummy > @s Ammo run function standard_weapon_pack:pistol/pistol_reload_calculate