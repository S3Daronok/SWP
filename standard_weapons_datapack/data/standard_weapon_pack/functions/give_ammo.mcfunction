execute store result score @s dummy run data get storage minecraft:weapons Ammo.Slot

replaceitem entity @s[scores={dummy=0}] container.0 air
replaceitem entity @s[scores={dummy=1}] container.1 air 
replaceitem entity @s[scores={dummy=2}] container.2 air 
replaceitem entity @s[scores={dummy=3}] container.3 air 
replaceitem entity @s[scores={dummy=4}] container.4 air 
replaceitem entity @s[scores={dummy=5}] container.5 air 
replaceitem entity @s[scores={dummy=6}] container.6 air 
replaceitem entity @s[scores={dummy=7}] container.7 air 
replaceitem entity @s[scores={dummy=8}] container.8 air 
replaceitem entity @s[scores={dummy=9}] container.9 air 
replaceitem entity @s[scores={dummy=10}] container.10 air 
replaceitem entity @s[scores={dummy=11}] container.11 air
replaceitem entity @s[scores={dummy=12}] container.12 air 
replaceitem entity @s[scores={dummy=13}] container.13 air 
replaceitem entity @s[scores={dummy=14}] container.14 air 
replaceitem entity @s[scores={dummy=15}] container.15 air 
replaceitem entity @s[scores={dummy=16}] container.16 air
replaceitem entity @s[scores={dummy=17}] container.17 air 
replaceitem entity @s[scores={dummy=18}] container.18 air 
replaceitem entity @s[scores={dummy=19}] container.19 air 
replaceitem entity @s[scores={dummy=20}] container.20 air 
replaceitem entity @s[scores={dummy=21}] container.21 air 
replaceitem entity @s[scores={dummy=22}] container.22 air 
replaceitem entity @s[scores={dummy=23}] container.23 air 
replaceitem entity @s[scores={dummy=24}] container.24 air 
replaceitem entity @s[scores={dummy=25}] container.25 air 
replaceitem entity @s[scores={dummy=26}] container.26 air 
replaceitem entity @s[scores={dummy=27}] container.27 air 
replaceitem entity @s[scores={dummy=28}] container.28 air 
replaceitem entity @s[scores={dummy=29}] container.29 air
replaceitem entity @s[scores={dummy=30}] container.30 air 
replaceitem entity @s[scores={dummy=31}] container.31 air 
replaceitem entity @s[scores={dummy=32}] container.32 air 
replaceitem entity @s[scores={dummy=33}] container.33 air 
replaceitem entity @s[scores={dummy=34}] container.34 air 
replaceitem entity @s[scores={dummy=35}] container.35 air

execute if score @s dummy matches 27.. run data modify storage minecraft:weapons Ammo.Slot set value 0b

setblock 0 0 0 shulker_box replace
data modify block 0 0 0 Items insert 0 from storage weapons Ammo
loot give @s mine 0 0 0 minecraft:stick{drop_contents:true}
scoreboard players reset @s dummy