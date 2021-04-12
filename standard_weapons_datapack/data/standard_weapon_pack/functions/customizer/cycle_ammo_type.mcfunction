execute unless score @s dummy matches 1 if data storage weapons Customized_Ammo.tag.shotgun_ammo run function standard_weapon_pack:customizer/cycle_shotgun_ammo
execute unless score @s dummy matches 1 if data storage weapons Customized_Ammo.tag.heavy_ammo run function standard_weapon_pack:customizer/cycle_heavy_ammo
scoreboard players reset @s dummy
schedule function standard_weapon_pack:customizer/customizer_settings 1t