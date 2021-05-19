setblock 0 0 0 shulker_box replace
data modify block 0 0 0 Items insert 0 from storage abilities SelectedItem
loot replace entity @s weapon.mainhand mine 0 0 0 minecraft:stick{drop_contents:true}