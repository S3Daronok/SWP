data modify storage weapons Customized.tag.ak47 set value 1b
data modify storage weapons Customized.tag.display.Name set value '{"text":"AK-47"}'
data remove storage weapons Customized.tag.pumpgun
scoreboard players set @s dummy 1
function standard_weapon_pack:customizer/cycle_shotgun_ammo
