tag @s add this
function valk:valk_q_raycast
execute positioned ^ ^2 ^ run function valk:valk_q_raycast
execute positioned ^2 ^2 ^ run function valk:valk_q_raycast
execute positioned ^-2 ^2 ^ run function valk:valk_q_raycast
execute positioned ^2 ^ ^ run function valk:valk_q_raycast
execute positioned ^-2 ^ ^ run function valk:valk_q_raycast
execute positioned ^ ^4 ^ run function valk:valk_q_raycast
execute positioned ^2 ^4 ^ run function valk:valk_q_raycast
execute positioned ^-2 ^4 ^ run function valk:valk_q_raycast
execute positioned ^ ^6 ^ run function valk:valk_q_raycast
execute positioned ^2 ^6 ^ run function valk:valk_q_raycast
execute positioned ^-2 ^6 ^ run function valk:valk_q_raycast
execute at @e[tag=valk_target,type=armor_stand] run function valk:blue_circle
execute as @s[scores={carrotOnaStick=1..}] at @s run function valk:valk_q_shoot