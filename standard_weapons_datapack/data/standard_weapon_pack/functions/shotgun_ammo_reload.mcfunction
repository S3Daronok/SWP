data modify storage minecraft:weapons Ammo set from entity @p Inventory[{id:"minecraft:gunpowder",tag: {shotgun_ammo:1b}}]
execute store result score @s Ammo run data get storage minecraft:weapons Ammo.Count