execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{pumpgun:1b}}}] run data modify storage weapons SelectedItem set from entity @s SelectedItem
data modify storage weapons SelectedItem.tag.weapon_mode set value 0b
function standard_weapon_pack:pumpgun/pumpgun_skins/pumpgun_mode_0_skins
function standard_weapon_pack:give_selected_item
scoreboard players add @s pumpgun_cooldown 7