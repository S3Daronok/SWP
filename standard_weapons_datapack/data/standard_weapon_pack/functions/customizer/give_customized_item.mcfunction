execute if data storage weapons Customized.tag.pumpgun run scoreboard players set @s pumpgun_ammo 5
execute if data storage weapons Customized.tag.ak47 run scoreboard players set @s ak47_ammo 20
setblock 0 0 0 shulker_box replace
data modify block 0 0 0 Items insert 0 from storage weapons Customized
loot give @s mine 0 0 0 minecraft:stick{drop_contents:true}
schedule function standard_weapon_pack:customizer/customizer_cancel 1t
