tp @e[tag=valk_target,type=armor_stand] ~ -1000 ~
bossbar set minecraft:valk_fuel players @s
effect clear @s[tag=!valk_ult_charge,tag=!redeploy] levitation
execute as @s[scores={valk_fuel=1..},tag=!valk_ult_charge,tag=!redeploy] at @s if block ~ ~-.5 ~ air if predicate valk:sneaking run function valk:valk_fly_passive
execute as @s[tag=!valk_fly_passive] at @s unless score @s fuel_cooldown matches 1.. unless score @s valk_fuel matches 120.. run scoreboard players add @s valk_fuel 1
tag @s remove OnGround
tag @s[tag=!valk_fly_passive] add OnGround
tag @s remove valk_fly_passive
scoreboard players remove @s[scores={fuel_cooldown=1..}] fuel_cooldown 1
scoreboard players remove @s[scores={valk_q_cooldown=1..}] valk_q_cooldown 1
scoreboard players remove @s[scores={rocket_shots=1..}] rocket_shots 1
execute unless score @s valk_ult matches 1000.. run scoreboard players add @s valk_ult 1
scoreboard players reset @s ult_percent
scoreboard players operation @s ult_percent += @s valk_ult
scoreboard players set @s dummy 10
scoreboard players operation @s ult_percent /= @s dummy
scoreboard players reset @s valk_q_secs
scoreboard players operation @s valk_q_secs += @s valk_q_cooldown
scoreboard players set @s dummy 20
scoreboard players operation @s valk_q_secs /= @s dummy
scoreboard players reset @s dummy


execute store result bossbar valk_fuel value run scoreboard players get @s valk_fuel
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{valk_q:1b}}}] unless score @s valk_q_cooldown matches 1.. at @s anchored eyes run function valk:valk_q
tag @s remove this
execute at @e[tag=valk_target_locked,type=armor_stand] run function valk:red_circle
execute as @e[tag=valk_rocket] run function valk:valk_q_rocket
execute as @e[tag=valk_rocket] run function valk:valk_q_rocket
execute as @e[tag=valk_rocket] run function valk:valk_q_rocket
execute as @e[tag=valk_rocket] run function valk:valk_q_rocket
execute as @e[tag=valk_rocket] run function valk:valk_q_rocket
execute as @e[tag=valk_rocket] run function valk:valk_q_rocket
execute as @e[tag=valk_rocket] run function valk:valk_q_rocket


execute as @e[scores={valk_ult=1000..,carrotOnaStick=1..},tag=!valk_ult_charge,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{valk_ult:1b}}}] run function valk:valk_ult
execute as @s[tag=valk_ult_charge] run function valk:valk_ult_charge

execute as @s[scores={rocket_shots=4}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_1] run summon armor_stand ^-.8 ^.5 ^ {Tags:["valk_rocket_1","valk_rocket","valk_new_rocket"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute as @s[scores={rocket_shots=4}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_1] run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 1.7
execute as @s[scores={rocket_shots=6}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_2] run summon armor_stand ^.8 ^.5 ^ {Tags:["valk_rocket_2","valk_rocket","valk_new_rocket"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute as @s[scores={rocket_shots=6}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_2] run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 1.5
execute as @s[scores={rocket_shots=8}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_3] run summon armor_stand ^-.8 ^.5 ^ {Tags:["valk_rocket_3","valk_rocket","valk_new_rocket"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute as @s[scores={rocket_shots=8}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_3] run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 1.7
execute as @s[scores={rocket_shots=10}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_4] run summon armor_stand ^.8 ^.5 ^ {Tags:["valk_rocket_4","valk_rocket","valk_new_rocket"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute as @s[scores={rocket_shots=10}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_4] run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 1.5
execute as @s[scores={rocket_shots=12}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_5] run summon armor_stand ^-.8 ^.5 ^ {Tags:["valk_rocket_5","valk_rocket","valk_new_rocket"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute as @s[scores={rocket_shots=12}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_5] run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 1.7
execute as @s[scores={rocket_shots=14}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_6] run summon armor_stand ^.8 ^.5 ^ {Tags:["valk_rocket_6","valk_rocket","valk_new_rocket"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute as @s[scores={rocket_shots=14}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_6] run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 1.5
execute as @s[scores={rocket_shots=16}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_7] run summon armor_stand ^-.8 ^.5 ^ {Tags:["valk_rocket_7","valk_rocket","valk_new_rocket"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute as @s[scores={rocket_shots=16}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_7] run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 1.7
execute as @s[scores={rocket_shots=18}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_8] run summon armor_stand ^.8 ^.5 ^ {Tags:["valk_rocket_8","valk_rocket","valk_new_rocket"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute as @s[scores={rocket_shots=18}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_8] run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 1.5
execute as @s[scores={rocket_shots=20}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_9] run summon armor_stand ^-.8 ^.5 ^ {Tags:["valk_rocket_9","valk_rocket","valk_new_rocket"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute as @s[scores={rocket_shots=20}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_9] run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 1.7
execute as @s[scores={rocket_shots=22}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_10] run summon armor_stand ^.8 ^.5 ^ {Tags:["valk_rocket_10","valk_rocket","valk_new_rocket"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute as @s[scores={rocket_shots=22}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_10] run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 1.5
execute as @s[scores={rocket_shots=24}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_11] run summon armor_stand ^-.8 ^.5 ^ {Tags:["valk_rocket_11","valk_rocket","valk_new_rocket"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute as @s[scores={rocket_shots=24}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_11] run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 1.7
execute as @s[scores={rocket_shots=26}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_12] run summon armor_stand ^.8 ^.5 ^ {Tags:["valk_rocket_12","valk_rocket","valk_new_rocket"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute as @s[scores={rocket_shots=26}] at @s anchored eyes if entity @e[type=armor_stand,tag=valk_target_12] run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 1.5
execute as @s[scores={rocket_shots=1}] run tag @e[tag=valk_new_rocket,type=armor_stand] remove valk_new_rocket
execute as @s[scores={rocket_shots=15}] run tag @e[tag=valk_new_rocket,type=armor_stand] remove valk_new_rocket

execute unless score @s valk_fuel matches 0.. run scoreboard players set @s valk_fuel 0
execute unless score @s fuel_cooldown matches 1.. run scoreboard players reset @s fuel_cooldown

execute as @s[tag=redeploy] at @s run effect give @e[tag=!valk,distance=..50] glowing 1 1

execute unless score @s valk_q_cooldown matches 1.. run title @s actionbar ["",{"text":"/","bold":true,"color":"dark_aqua"},{"text":"-","color":"aqua"},{"text":"Q","bold":true,"color":"white"},{"text":"-","color":"aqua"},{"text":"/    ","bold":true,"color":"dark_aqua"},{"text":"-","color":"yellow"},{"text":"/","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"ult_percent"},"bold":true,"color":"white"},{"text":"%","color":"yellow"},{"text":"\\","bold":true,"color":"gold"},{"text":"-","color":"yellow"},{"text":"    \\","bold":true,"color":"dark_aqua"},{"text":"-","color":"aqua"},{"score":{"name":"@s","objective":"valk_fuel"},"bold":true,"color":"white"},{"text":"-","color":"aqua"},{"text":"\\","bold":true,"color":"dark_aqua"}]
title @s[scores={valk_q_cooldown=1..}] actionbar ["",{"text":"/","bold":true,"color":"dark_aqua"},{"text":"-","color":"aqua"},{"score":{"name":"@s","objective":"valk_q_secs"},"bold":true,"color":"white"},{"text":"-","color":"aqua"},{"text":"/    ","bold":true,"color":"dark_aqua"},{"text":"-","color":"yellow"},{"text":"/","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"ult_percent"},"bold":true,"color":"white"},{"text":"%","color":"yellow"},{"text":"\\","bold":true,"color":"gold"},{"text":"-","color":"yellow"},{"text":"    \\","bold":true,"color":"dark_aqua"},{"text":"-","color":"aqua"},{"score":{"name":"@s","objective":"valk_fuel"},"bold":true,"color":"white"},{"text":"-","color":"aqua"},{"text":"\\","bold":true,"color":"dark_aqua"}]
execute as @s[scores={carrotOnaStick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{valk_q:1b}}}] run scoreboard players reset @s carrotOnaStick