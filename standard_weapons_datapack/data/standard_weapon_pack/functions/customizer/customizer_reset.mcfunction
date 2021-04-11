data modify storage weapons Customized.id set value "carrot_on_a_stick"
data modify storage weapons Customized.Count set value 1b
data modify storage weapons Customized.tag.magazine set value 0b
data modify storage weapons Customized.tag.scope set value 0b
data modify storage weapons Customized.tag.pyro_ammo set value 0b
data modify storage weapons Customized.tag.poison_ammo set value 0b
scoreboard players reset @a customizer_skin
function standard_weapon_pack:customizer/cycle_pumpgun
scoreboard players reset @s dummy
function standard_weapon_pack:customizer/cycle_skin
schedule function standard_weapon_pack:customizer/customizer_settings 1t