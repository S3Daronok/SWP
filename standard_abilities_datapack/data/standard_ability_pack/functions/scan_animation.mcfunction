data modify storage abilities SelectedItem set from entity @s Inventory[{tag:{scan:1b}}]
data modify storage abilities SelectedItem.tag.CustomModelData set value 101
execute store result score @s dummy run data get storage abilities SelectedItem.Slot
setblock 0 0 0 shulker_box replace
data modify block 0 0 0 Items insert 0 from storage abilities SelectedItem
replaceitem entity @s[scores={dummy=0}] container.0 air
replaceitem entity @s[scores={dummy=1}] container.1 air
replaceitem entity @s[scores={dummy=2}] container.2 air
replaceitem entity @s[scores={dummy=3}] container.3 air
replaceitem entity @s[scores={dummy=4}] container.4 air
replaceitem entity @s[scores={dummy=5}] container.5 air
replaceitem entity @s[scores={dummy=6}] container.6 air
replaceitem entity @s[scores={dummy=7}] container.7 air
replaceitem entity @s[scores={dummy=8}] container.8 air
loot give @s mine 0 0 0 minecraft:stick{drop_contents:true}