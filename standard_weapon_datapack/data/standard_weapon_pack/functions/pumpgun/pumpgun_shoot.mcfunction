tag @s add shooter
scoreboard players remove @s pumpgun_ammo 1
execute at @s unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{silencer:1b}}}] run playsound daronok_weapon_pack_pumpgun_shoot player @a ~ ~ ~
scoreboard players add @s pumpgun_cooldown 18
function standard_weapon_pack:pumpgun/pumpgun_secondary_shoot
execute at @s run teleport @s ~ ~ ~ ~-2 ~
function standard_weapon_pack:pumpgun/pumpgun_secondary_shoot
execute at @s run teleport @s ~ ~ ~ ~ ~2
function standard_weapon_pack:pumpgun/pumpgun_secondary_shoot
execute at @s run teleport @s ~ ~ ~ ~ ~-4
function standard_weapon_pack:pumpgun/pumpgun_secondary_shoot
execute at @s run teleport @s ~ ~ ~ ~4 ~
function standard_weapon_pack:pumpgun/pumpgun_secondary_shoot
execute at @s run teleport @s ~ ~ ~ ~ ~2
function standard_weapon_pack:pumpgun/pumpgun_secondary_shoot
execute at @s run teleport @s ~ ~ ~ ~ ~-4
function standard_weapon_pack:pumpgun/pumpgun_secondary_shoot
execute at @s run teleport @s ~ ~ ~ ~-2 ~
function standard_weapon_pack:pumpgun/pumpgun_secondary_shoot
execute at @s run teleport @s ~ ~ ~ ~ ~4
function standard_weapon_pack:pumpgun/pumpgun_secondary_shoot
execute as @e[tag=!shooter] if score @s damage matches 1.. run scoreboard players set @s dummy 20
execute as @e[tag=!shooter] if score @s damage matches 1.. run scoreboard players operation @s damage /= @s dummy
execute as @e[tag=!shooter] if score @s damage matches 1.. run scoreboard players reset @s dummy
execute as @e[tag=!shooter] if score @s damage matches 1.. run function standard_weapon_pack:damage_indicator
tag @s remove shooter 
execute at @s run teleport @s ~ ~ ~ ~ ~-7
execute as @s[scores={pumpgun_ammo=0}] run scoreboard players set @s pumpgun_cooldown 0
execute as @s[scores={pumpgun_ammo=0}] run function standard_weapon_pack:store_selected_item
execute if data entity @s Inventory[{id:"minecraft:gunpowder",tag: {shotgun_ammo:1b}}] as @s[scores={pumpgun_ammo=0}] run function standard_weapon_pack:pumpgun/pumpgun_reload