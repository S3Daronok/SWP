scoreboard players reset @s carrotOnaStick
tag @s add scanner
execute at @s run effect give @e[type=!armor_stand,tag=!scanner,distance=..15] glowing 3 1 true
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"entity_effect",Radius:1f,RadiusPerTick:3f,Duration:5,Color:16766254}
tag @s remove scanner
scoreboard players set @s scan_cooldown 600
data modify storage abilities SelectedItem set from entity @s SelectedItem
data modify storage abilities SelectedItem.tag.CustomModelData set value 100
function standard_ability_pack:give_selected_item