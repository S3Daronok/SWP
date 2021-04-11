execute unless score @s dummy matches 1 if data storage weapons Customized.tag.ak47 run function standard_weapon_pack:customizer/cycle_ak47
execute unless score @s dummy matches 1 if data storage weapons Customized.tag.pumpgun run function standard_weapon_pack:customizer/cycle_pumpgun
scoreboard players reset @s dummy
function standard_weapon_pack:customizer/cycle_skin
schedule function standard_weapon_pack:customizer/customizer_settings 1t