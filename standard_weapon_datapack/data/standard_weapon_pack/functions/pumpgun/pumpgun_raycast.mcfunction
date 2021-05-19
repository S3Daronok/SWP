execute unless entity @a[tag=shooter,scores={fire_ammo=1}] run particle crit ~ ~ ~ 0 0 0 0 1
execute if entity @a[tag=shooter,scores={fire_ammo=1}] run particle flame ~ ~ ~ 0 0 0 0 1
execute if entity @a[tag=shooter,scores={poison_ammo=1}] run particle entity_effect ~ ~ ~ 0.055 0.451 0.094 1 0
execute as @e[dx=0,type=!armor_stand,type=!player] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function standard_weapon_pack:pumpgun/pumpgun_apply_damage
execute as @a[dx=0,tag=!shooter] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run scoreboard players add @s damage 9
execute as @a[dx=0,tag=!shooter] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] if entity @a[tag=shooter,tag=amped_weapons] run scoreboard players add @s damage 5
scoreboard players remove @a[tag=shooter] range 1
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ air positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast

#blöcke zum durchschießen
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ hay_block positioned ^ ^ ^0.5 run scoreboard players remove @a[tag=shooter] range 1
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ hay_block positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
#transportation
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ ladder positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ rail positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ powered_rail positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ detector_rail positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ activator_rail positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
#torches & light
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ torch positioned ^ ^ ^0.5 run scoreboard players set @a[tag=shooter] fire_ammo 1
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ torch positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ wall_torch positioned ^ ^ ^0.5 run scoreboard players set @a[tag=shooter] fire_ammo 1
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ wall_torch positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ soul_torch positioned ^ ^ ^0.5 run scoreboard players set @a[tag=shooter] fire_ammo 1
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ soul_torch positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ soul_wall_torch positioned ^ ^ ^0.5 run scoreboard players set @a[tag=shooter] fire_ammo 1
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ soul_wall_torch positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ redstone_torch positioned ^ ^ ^0.5 run scoreboard players set @a[tag=shooter] fire_ammo 1
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ redstone_torch positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ redstone_wall_torch positioned ^ ^ ^0.5 run scoreboard players set @a[tag=shooter] fire_ammo 1
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ redstone_wall_torch positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ lantern positioned ^ ^ ^0.5 run scoreboard players set @a[tag=shooter] fire_ammo 1
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ lantern positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ soul_lantern positioned ^ ^ ^0.5 run scoreboard players set @a[tag=shooter] fire_ammo 1
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ soul_lantern positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ fire positioned ^ ^ ^0.5 run scoreboard players set @a[tag=shooter] fire_ammo 1
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ fire positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ soul_fire positioned ^ ^ ^0.5 run scoreboard players set @a[tag=shooter] fire_ammo 1
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ soul_fire positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ campfire positioned ^ ^ ^0.5 run scoreboard players set @a[tag=shooter] fire_ammo 1
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ campfire positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ soul_campfire positioned ^ ^ ^0.5 run scoreboard players set @a[tag=shooter] fire_ammo 1
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ soul_campfire positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
#doors & fences
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ oak_door positioned ^ ^ ^0.5 run scoreboard players remove @a[tag=shooter] range 2
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ oak_door positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ acacia_door positioned ^ ^ ^0.5 run scoreboard players remove @a[tag=shooter] range 2
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ acacia_door positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ birch_door positioned ^ ^ ^0.5 run scoreboard players remove @a[tag=shooter] range 2
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ birch_door positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ dark_oak_door positioned ^ ^ ^0.5 run scoreboard players remove @a[tag=shooter] range 2
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ dark_oak_door positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ spruce_door positioned ^ ^ ^0.5 run scoreboard players remove @a[tag=shooter] range 2
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ spruce_door positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ crimson_door positioned ^ ^ ^0.5 run scoreboard players remove @a[tag=shooter] range 2
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ crimson_door positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ jungle_door positioned ^ ^ ^0.5 run scoreboard players remove @a[tag=shooter] range 2
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ jungle_door positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ warped_door positioned ^ ^ ^0.5 run scoreboard players remove @a[tag=shooter] range 2
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ warped_door positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ iron_door positioned ^ ^ ^0.5 run scoreboard players remove @a[tag=shooter] range 4
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ iron_door positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast

execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ oak_trapdoor positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ acacia_trapdoor positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ birch_trapdoor positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ dark_oak_trapdoor positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ spruce_trapdoor positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ crimson_trapdoor positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ jungle_trapdoor positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ warped_trapdoor positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ iron_trapdoor positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast

execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ oak_fence positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ acacia_fence positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ birch_fence positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ dark_oak_fence positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ spruce_fence positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ crimson_fence positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ jungle_fence positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ warped_fence positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast

execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ oak_fence_gate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ acacia_fence_gate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ birch_fence_gate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ dark_oak_fence_gate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ spruce_fence_gate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ crimson_fence_gate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ jungle_fence_gate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ warped_fence_gate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
#plants
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ grass positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ tall_grass positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ fern positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ large_fern positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ vine positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ lilac positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ rose_bush positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ peony positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ sunflower positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ sugar_cane positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ bamboo positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast

execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ dead_bush positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ dandelion positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ poppy positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ blue_orchid positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ allium positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ azure_bluet positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ red_tulip positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ orange_tulip positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ white_tulip positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ pink_tulip positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ oxeye_daisy positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ cornflower positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ lily_of_the_valley positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ wither_rose positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast

execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ red_mushroom positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ brown_mushroom positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ warped_fungus positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ crimson_fungus positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast

execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ warped_roots positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ crimson_roots positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ nether_sprouts positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ weeping_vines positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ weeping_vines_plant positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ twisting_vines positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ twisting_vines_plant positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast

execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ bamboo_sapling positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ oak_sapling positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ dark_oak_sapling positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ spruce_sapling positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ acacia_sapling positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ birch_sapling positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ jungle_sapling positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast

#underwater
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ water positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ seagrass positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ sea_pickle positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ kelp positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ kelp_plant positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast


#redstone
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ oak_button positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ stone_button positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ acacia_button positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ birch_button positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ dark_oak_button positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ spruce_button positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ crimson_button positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ jungle_button positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ warped_button positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ polished_blackstone_button positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast

execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ oak_pressure_plate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ birch_pressure_plate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ stone_pressure_plate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ jungle_pressure_plate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ dark_oak_pressure_plate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ spruce_pressure_plate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ warped_pressure_plate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ crimson_pressure_plate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ acacia_pressure_plate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ polished_blackstone_pressure_plate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ heavy_weighted_pressure_plate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ light_weighted_pressure_plate positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast

execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ tripwire_hook positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ tripwire positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ redstone_wire positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ repeater positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ comparator positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
#carpet
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ red_carpet positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ black_carpet positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ green_carpet positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ brown_carpet positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ blue_carpet positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ purple_carpet positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ cyan_carpet positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ light_gray_carpet positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ gray_carpet positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ pink_carpet positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ lime_carpet positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ yellow_carpet positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ light_blue_carpet positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ magenta_carpet positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ orange_carpet positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast
execute if score @a[tag=shooter,limit=1] range matches 1.. if block ~ ~ ~ white_carpet positioned ^ ^ ^0.5 run function standard_weapon_pack:pumpgun/pumpgun_raycast