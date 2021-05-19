execute as @s[predicate=pred:sneaking] run function standard_weapon_pack:aim
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pumpgun:1b}}}] run function standard_weapon_pack:pumpgun/pumpgun_tick
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{sniper:1b}}}] run function standard_weapon_pack:sniper/sniper_tick
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ak47:1b}}}] run function standard_weapon_pack:ak47/ak47_tick
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pistol:1b}}}] run function standard_weapon_pack:pistol/pistol_tick