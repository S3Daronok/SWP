function standard_weapon_pack:ak47/ak47_reload
function standard_weapon_pack:store_selected_item
data modify storage weapons SelectedItem.tag.weapon_mode set value 2b
function standard_weapon_pack:ak47/ak47_skins/ak47_mode_2_skins
function standard_weapon_pack:give_selected_item
scoreboard players add @s ak47_cooldown 30