particle explosion_emitter
execute as @e[type=!player,type=!armor_stand,distance=..2.5] store result score @s health run data get entity @s Health
execute as @e[type=!player,type=!armor_stand,distance=..2.5] store result entity @s Health float 1 run scoreboard players remove @s health 5
execute as @a[distance=..2.5] run effect give @s instant_damage 1 1 true
execute as @s[tag=valk_rocket_1] run tp @e[tag=valk_target_1,type=armor_stand,limit=1,sort=nearest] ~ -1000 ~
execute as @s[tag=valk_rocket_2] run tp @e[tag=valk_target_2,type=armor_stand,limit=1,sort=nearest] ~ -1000 ~
execute as @s[tag=valk_rocket_3] run tp @e[tag=valk_target_3,type=armor_stand,limit=1,sort=nearest] ~ -1000 ~
execute as @s[tag=valk_rocket_4] run tp @e[tag=valk_target_4,type=armor_stand,limit=1,sort=nearest] ~ -1000 ~
execute as @s[tag=valk_rocket_5] run tp @e[tag=valk_target_5,type=armor_stand,limit=1,sort=nearest] ~ -1000 ~
execute as @s[tag=valk_rocket_6] run tp @e[tag=valk_target_6,type=armor_stand,limit=1,sort=nearest] ~ -1000 ~
execute as @s[tag=valk_rocket_7] run tp @e[tag=valk_target_7,type=armor_stand,limit=1,sort=nearest] ~ -1000 ~
execute as @s[tag=valk_rocket_8] run tp @e[tag=valk_target_8,type=armor_stand,limit=1,sort=nearest] ~ -1000 ~
execute as @s[tag=valk_rocket_9] run tp @e[tag=valk_target_9,type=armor_stand,limit=1,sort=nearest] ~ -1000 ~
execute as @s[tag=valk_rocket_10] run tp @e[tag=valk_target_10,type=armor_stand,limit=1,sort=nearest] ~ -1000 ~
execute as @s[tag=valk_rocket_11] run tp @e[tag=valk_target_11,type=armor_stand,limit=1,sort=nearest] ~ -1000 ~
execute as @s[tag=valk_rocket_12] run tp @e[tag=valk_target_12,type=armor_stand,limit=1,sort=nearest] ~ -1000 ~
tp @s ~ -1000 ~